package com.example.Common.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.csrf.CsrfTokenRepository;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;
import org.springframework.security.web.header.HeaderWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yang_huang on 2016/12/29.
 */
@Configuration
@EnableWebMvcSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    @Bean
    public UserDetailsService userDetailsService() {
        return new CustomUserDetailsService();
    }

    //数据库获取用户权限
    @Override
    protected void configure(AuthenticationManagerBuilder auth)
            throws Exception {
          auth.userDetailsService(userDetailsService());
    //    auth.inMemoryAuthentication()
    //            .withUser("admin").password("admin").roles("admin");
    }

    //忽略静态资源文件
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/**/*.js","/**/*.css","/fonts/**","/images/**","/framework/**","/**/*.jsp","/user/*"
                );
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .headers()
                .addHeaderWriter((request,response) -> {response.addHeader("X-Frame-Options","SAMEORIGIN");})
                .and()
                .authorizeRequests()
                    .antMatchers("/", "/home","/**/homePage").permitAll()
                    .anyRequest().authenticated()
                .and()
                .formLogin()
                     .loginPage("/login")//action的地址
                 //    .loginProcessingUrl("/loginAction")
                     .usernameParameter("username")
                     .passwordParameter("password")
                    .defaultSuccessUrl("/login/success")
                    .failureUrl("/login/fail")
                     .permitAll()
                .and()
                .logout()
                     .permitAll()
                .and()
                .csrf()
                    .disable();
                 //   .csrfTokenRepository(csrfTokenRepository());
    }

    private CsrfTokenRepository csrfTokenRepository()
    {
        HttpSessionCsrfTokenRepository repository = new HttpSessionCsrfTokenRepository();
        repository.setSessionAttributeName("_csrf");
        return repository;
    }

}
