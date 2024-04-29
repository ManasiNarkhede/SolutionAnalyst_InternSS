package config;

import graphql.kickstart.tools.SchemaParser;
import graphql.schema.GraphQLSchema;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class GraphQLConfig {

    @Bean
    public GraphQLSchema graphQLSchema() {
        return SchemaParser.newParser()
                .file("classpath:schema.graphqls") // GraphQL schema file
                .build()
                .makeExecutableSchema();
    }
}
