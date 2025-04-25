package com.worker.consumer;

import io.awspring.cloud.sqs.annotation.SqsListener;
import org.springframework.stereotype.Service;
import com.worker.handler.SQSMessageHandler;

@Service
public class SQSConsumer {
    private final SQSMessageHandler messageHandler;

    public SQSConsumer(SQSMessageHandler messageHandler) {
        this.messageHandler = messageHandler;
    }

    @SqsListener("${aws.sqs.queue_name}")
    public void consumeMessage(String message) {
        try {
            messageHandler.handleMessage(message);
        } catch (Exception e) {
            messageHandler.handleError(e);
        }
    }
}