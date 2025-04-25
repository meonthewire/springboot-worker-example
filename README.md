# SpringBoot Worker Example
This is an example Springboot application which subscribes to a SQS queue and consume messages


## How to build?

```
$ make docker-build
```

## How to run?

```
$ make docker-run
````

This command starts a new container as a bellow:

```

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::                (v3.2.0)

2025-04-25T14:26:30.194Z  INFO 1 --- [           main] com.worker.Application                   : Starting Application using Java 25-ea with PID 1 (/app.jar started by root in /)
2025-04-25T14:26:30.196Z  INFO 1 --- [           main] com.worker.Application                   : No active profile set, falling back to 1 default profile: "default"
WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by io.netty.util.internal.PlatformDependent0$4 (jar:nested:/app.jar/!BOOT-INF/lib/netty-common-4.1.101.Final.jar!/)
WARNING: Please consider reporting this to the maintainers of class io.netty.util.internal.PlatformDependent0$4
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
2025-04-25T14:26:33.089Z  INFO 1 --- [ecycle-thread-1] a.c.s.l.AbstractMessageListenerContainer : Container io.awspring.cloud.sqs.sqsListenerEndpointContainer#0 started
2025-04-25T14:26:33.113Z  INFO 1 --- [           main] com.worker.Application                   : Started Application in 3.551 seconds (process running for 4.212)

2025-04-25T14:27:01.674Z  INFO 1 --- [ntContainer#0-1] com.worker.handler.SQSMessageHandler     : Processing message {
  "uuid": "57253bfe-ea16-4760-ab3b-52a06674c6b4"
  "provider": "my_payment_provider",
  "amount": 96000,
  "credit_ref": "1234:hdjshd:9999"
}

```



