## Task

|  task | status  |
|---|---|
|  每 5 mins 自动触发SNS的Topic | done  |
|  SNS 自动发送邮件，邮件内容包含所有 event 的内容 | done  |
|  SNS 向订阅的 SQS中发送消息 | done  |
|  SQS要有retention(7days) / timeout(5mins) | done  |
|  SQS自动触发Lambda运行，Lambda将event的所有内容输出到CloudWatch log中 | done  |
|  SNS要有 logging  | ?  |
|  SNS要有 encryption |   |
|  SNS要有 retry |   |
|  SNS要有 permission |   |
|  Email Subscription 要有 DLQ |   |
|  SQS要有 DLQ / encryption |  done |
|  tagging  | done  |
|  As Code: CFN  | done  |
|  能够随时部署及删除Project（使用Docker部署 | done  |
|  最小权限  | done  |
|  消息发送失败报警  |  ?how to test? |

## delivery

package:

```bash
 auto/package.sh
```

deploy:

```bash
auto/deploy.sh
```
