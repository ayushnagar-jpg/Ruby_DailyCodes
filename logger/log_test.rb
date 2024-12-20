require 'logger'

logger = Logger.new('log.txt')

logger.level = Logger::WARN 

logger.debug("this is a debug error")
logger.fatal("this is a fatal message")
logger.warn("this is a warning message")
logger.error("this is an error message")
logger.info("this is an info message")