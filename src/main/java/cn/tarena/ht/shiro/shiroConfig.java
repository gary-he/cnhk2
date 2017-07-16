package cn.tarena.ht.shiro;

import cn.tarena.ht.shiro.AuthCredential;
import cn.tarena.ht.shiro.AuthRealm;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/16.
 */
@Configuration
public class shiroConfig {
    /**
     * shiro过滤器
     * @param securityManager
     * @return
     */
    @Bean
    public ShiroFilterFactoryBean shiroFliter(SecurityManager securityManager){
        ShiroFilterFactoryBean shiroFilterFactoryBean=new ShiroFilterFactoryBean();

        //必须设置SecurityManager
        shiroFilterFactoryBean.setSecurityManager(securityManager);

        //登录页面
        shiroFilterFactoryBean.setLoginUrl("/tologin");

        //拦截器
        Map<String,String> fliterChainDefinitionMap=new LinkedHashMap<String, String>();

        //配置放行的连接，顺序判断
        /*
        * /tologin.action = anon
		 		/login.action = anon
		 		/toregist.action=anon
		 		/regist.action=anon
		 		/staticfile/** = anon
		 		/pay/** = authc
        * */
        fliterChainDefinitionMap.put("/tologin.action","anon");
        fliterChainDefinitionMap.put("/toregist.action","anon");
        fliterChainDefinitionMap.put("/regist.action","anon");
        fliterChainDefinitionMap.put("/login.action","anon");
        fliterChainDefinitionMap.put("/staticfile/**","anon");

        fliterChainDefinitionMap.put("/pay/**","authc");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(fliterChainDefinitionMap);

        System.out.println("shiro拦截器工厂类注入成功");
        return shiroFilterFactoryBean;
    }

    /**
     * 安全中心
     * @return
     */
    @Bean
    public SecurityManager securityManager(){
        DefaultWebSecurityManager securityManager=new DefaultWebSecurityManager();

        //设置realm
        securityManager.setRealm(authRealm());
        return securityManager;
    }

    /**
     * 自定义realm
     * @return
     */
    @Bean
    public AuthRealm authRealm(){
        AuthRealm realm=new AuthRealm();
        realm.setCredentialsMatcher(authCredential());
        return realm;
    }

    /**
     * 自定义加密算法
     * @return
     */
    @Bean
    public AuthCredential authCredential(){
        AuthCredential authCredential=new AuthCredential();
        return authCredential;
    }

    /**
     * 由spring容器管理shiro的组件
     * @return
     */
    @Bean(name = "lifecycleBeanPostProcessor")
    public LifecycleBeanPostProcessor getLifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    /**
     * 由spring容器为shiro的bean创建代理对象
     * @return
     */
    @Bean
    public DefaultAdvisorAutoProxyCreator getDefaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator daap = new DefaultAdvisorAutoProxyCreator();
        daap.setProxyTargetClass(true);
        return daap;
    }

    /**
     * 权限认证适配器
     * @param securityManager
     * @return
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor getAuthorizationAttributeSourceAdvisor(DefaultWebSecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor aasa = new AuthorizationAttributeSourceAdvisor();
        aasa.setSecurityManager(securityManager);
        return aasa;
    }
}
