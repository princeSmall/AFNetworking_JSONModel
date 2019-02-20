#### HTTP 定义了与服务器交互的不同方法，最常用的有4种，Get、Post、Put、Delete

Put（增）,Delete（删），Post（改）,Get（查）

GET和POST的区别：

1. GET请求的数据是放在http包头中的，也就是URL之后
2. GET提交的数据比较少，最多1024B，速度快
3. POST的安全性要比GET高，因为GET时，参数数据时明文传输的，容易造成Cross-site request forgery攻击，而POST数据时可以加密的 


操作方式|数据位置|明文秘文|数据安全|长度限制|应用场景
-------|-------|-------|------|-------|----------------------------
GET    |HTTP包头|明文|不安全|长度较小|查询数据|
POST   |HTTP正文|可明可密|安全|支持较大数据传输|修改数据|

### AFNetworking
<pre>
AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.responseSerializer = [AFHTTPResponseSerializer serializer];
    session.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [session GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
</pre>

### JSONModel
<pre>
@protocol resModel
@end
// 这两句要写
@interface resModel : JSONModel
@property (nonatomic, copy) NSString<Optional> *ghash;
@property (nonatomic, assign) NSInteger gid;
@property (nonatomic, copy) NSString<Optional> *title;
@property (nonatomic, copy) NSString<Optional> *thumb;
@property (nonatomic, strong) NSArray <Optional,questionsModel>*questions;

@end

@interface RESModel : JSONModel
@property (nonatomic, assign) NSInteger code;
@property (nonatomic, strong) NSArray<resModel,Optional>* res;
@end
</pre>

// 定义的属性和后台返回的不一样要mapper，对象可以不一样，例如：resModel
<pre>
+ (JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{
                                                                  @"questionID": @"id",
                                                                  }];
}
</pre>
