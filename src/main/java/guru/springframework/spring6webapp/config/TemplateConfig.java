package guru.springframework.spring6webapp.config;

import java.nio.file.Path;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.thymeleaf.spring6.SpringTemplateEngine;

import gg.jte.ContentType;
import gg.jte.TemplateEngine;
import gg.jte.resolve.DirectoryCodeResolver;

@Configuration
public class TemplateConfig {

    @Bean
    @ConditionalOnProperty(name = "app.template-engine", havingValue = "jte")
    public TemplateEngine jteEngine() {
        return TemplateEngine.create(
            new DirectoryCodeResolver(Path.of("src/main/jte")),
            ContentType.Html
        );
    }

    @Bean
    @ConditionalOnProperty(name = "app.template-engine", havingValue = "thymeleaf")
    public SpringTemplateEngine thymeleafEngine() {
        return new SpringTemplateEngine();
    }
}
