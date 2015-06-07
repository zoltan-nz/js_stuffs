import events from 'events';

const logger = new events.EventEmitter();

logger.on('error', function (message) {
    console.log(`ERR: ${message}`);
});

export default logger;