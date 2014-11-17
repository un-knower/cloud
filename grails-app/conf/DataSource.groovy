import org.springframework.core.io.ClassPathResource
import org.springframework.core.io.support.PropertiesLoaderUtils

def pros

try {
	pros = PropertiesLoaderUtils.loadProperties(new ClassPathResource("app-config.properties"))
} catch (IOException e) {
	e.printStackTrace();
}


dataSource {
    pooled = true
	driverClassName = pros.getProperty("jdbc.driverClassName")
	username = pros.getProperty("jdbc.username")
	password = pros.getProperty("jdbc.password")
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = pros.getProperty("jdbc.url")
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = pros.getProperty("jdbc.url")
        }
    }
    production {
        dataSource {
            url = pros.getProperty("jdbc.url")
			pooled = true
            properties {
               // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 1800000
               minEvictableIdleTimeMillis = 1800000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = true
               jdbcInterceptors = "ConnectionState"
               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }
}
