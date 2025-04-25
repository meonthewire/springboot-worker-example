package com.worker.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class SQSMessageHandler {
    private static final Logger logger = LoggerFactory.getLogger(SQSMessageHandler.class);

    public void handleMessage(String message) {
        logger.info("Received message {}", message);
    }

    public void handleError(Throwable e) {
        logger.error("Error while processing message", e);
    }
}