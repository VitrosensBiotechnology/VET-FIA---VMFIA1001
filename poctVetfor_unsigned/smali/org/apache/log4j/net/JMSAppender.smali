.class public Lorg/apache/log4j/net/JMSAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "JMSAppender.java"


# instance fields
.field initialContextFactoryName:Ljava/lang/String;

.field locationInfo:Z

.field password:Ljava/lang/String;

.field providerURL:Ljava/lang/String;

.field securityCredentials:Ljava/lang/String;

.field securityPrincipalName:Ljava/lang/String;

.field tcfBindingName:Ljava/lang/String;

.field topicBindingName:Ljava/lang/String;

.field topicConnection:Ljavax/jms/TopicConnection;

.field topicPublisher:Ljavax/jms/TopicPublisher;

.field topicSession:Ljavax/jms/TopicSession;

.field urlPkgPrefixes:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 121
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 6

    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Getting initial context."

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 180
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 181
    .local v2, "env":Ljava/util/Properties;
    const-string v3, "java.naming.factory.initial"

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 183
    const-string v3, "java.naming.provider.url"

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_0
    const-string v3, "You have set InitialContextFactoryName option but not the ProviderURL. This is likely to cause problems."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 188
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 189
    const-string v3, "java.naming.factory.url.pkgs"

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_1
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 193
    const-string v3, "java.naming.security.principal"

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 195
    const-string v3, "java.naming.security.credentials"

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    :cond_2
    const-string v3, "You have set SecurityPrincipalName option but not the SecurityCredentials. This is likely to cause problems."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 201
    :cond_3
    :goto_1
    new-instance v3, Ljavax/naming/InitialContext;

    invoke-direct {v3, v2}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    .line 201
    .end local v2    # "env":Ljava/util/Properties;
    move-object v2, v3

    .line 202
    .local v2, "jndi":Ljavax/naming/Context;
    goto :goto_2

    .line 203
    .end local v2    # "jndi":Ljavax/naming/Context;
    :cond_4
    new-instance v2, Ljavax/naming/InitialContext;

    invoke-direct {v2}, Ljavax/naming/InitialContext;-><init>()V

    .line 206
    .restart local v2    # "jndi":Ljavax/naming/Context;
    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Looking up ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jms/TopicConnectionFactory;

    move-object v1, v3

    .line 208
    .local v1, "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    const-string v3, "About to create TopicConnection."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 210
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    goto :goto_3

    .line 213
    :cond_5
    invoke-interface {v1}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection()Ljavax/jms/TopicConnection;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    .line 216
    :goto_3
    const-string v3, "Creating TopicSession, non-transactional, in AUTO_ACKNOWLEDGE mode."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    .line 221
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Looking up topic name ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jms/Topic;

    .line 224
    .local v3, "topic":Ljavax/jms/Topic;
    const-string v4, "Creating TopicPublisher."

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v4, v3}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    .line 227
    const-string v4, "Starting TopicConnection."

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v4}, Ljavax/jms/TopicConnection;->start()V

    .line 230
    invoke-interface {v2}, Ljavax/naming/Context;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "jndi":Ljavax/naming/Context;
    .end local v3    # "topic":Ljavax/jms/Topic;
    goto :goto_4

    .line 237
    .end local v1    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :catch_0
    move-exception v2

    .line 238
    .restart local v1    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error while activating options for appender named ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, v0}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 238
    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_5

    .line 234
    .end local v1    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :catch_1
    move-exception v2

    .line 235
    .restart local v1    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    .local v2, "e":Ljavax/naming/NamingException;
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error while activating options for appender named ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, v0}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 235
    .end local v2    # "e":Ljavax/naming/NamingException;
    goto :goto_4

    .line 231
    .end local v1    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :catch_2
    move-exception v2

    .line 232
    .restart local v1    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    .local v2, "e":Ljavax/jms/JMSException;
    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error while activating options for appender named ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, v0}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 240
    .end local v2    # "e":Ljavax/jms/JMSException;
    :goto_4
    nop

    .line 241
    :goto_5
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 303
    invoke-virtual {p0}, Lorg/apache/log4j/net/JMSAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v1}, Ljavax/jms/TopicSession;->createObjectMessage()Ljavax/jms/ObjectMessage;

    move-result-object v1

    .line 309
    .local v1, "msg":Ljavax/jms/ObjectMessage;
    iget-boolean v2, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 312
    :cond_1
    invoke-interface {v1, p1}, Ljavax/jms/ObjectMessage;->setObject(Ljava/io/Serializable;)V

    .line 313
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    invoke-interface {v2, v1}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v1    # "msg":Ljavax/jms/ObjectMessage;
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not publish message in JMSAppender ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 318
    .end local v1    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 314
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Ljavax/jms/JMSException;
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not publish message in JMSAppender ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, v0}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 320
    .end local v1    # "e":Ljavax/jms/JMSException;
    :goto_0
    nop

    .line 321
    :goto_1
    return-void
.end method

.method protected checkEntryConditions()Z
    .locals 4

    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "fail":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-nez v1, :cond_0

    .line 256
    const-string v0, "No TopicConnection"

    goto :goto_0

    .line 257
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-nez v1, :cond_1

    .line 258
    const-string v0, "No TopicSession"

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    if-nez v1, :cond_2

    .line 260
    const-string v0, "No TopicPublisher"

    .line 263
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 264
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " for JMSAppender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x0

    return v1

    .line 267
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 277
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/net/JMSAppender;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 278
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Closing appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/net/JMSAppender;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v0}, Ljavax/jms/TopicSession;->close()V

    .line 286
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v0}, Ljavax/jms/TopicConnection;->close()V
    :try_end_2
    .catch Ljavax/jms/JMSException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :cond_2
    :goto_0
    goto :goto_1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 288
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljavax/jms/JMSException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    .end local v0    # "e":Ljavax/jms/JMSException;
    goto :goto_0

    .line 294
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    .line 295
    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    .line 296
    iput-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInitialContextFactoryName()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderURL()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityCredentials()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityPrincipalName()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicBindingName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicConnection()Ljavax/jms/TopicConnection;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    return-object v0
.end method

.method public getTopicConnectionFactoryBindingName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicPublisher()Ljavax/jms/TopicPublisher;
    .locals 1

    .line 434
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    return-object v0
.end method

.method protected getTopicSession()Ljavax/jms/TopicSession;
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    return-object v0
.end method

.method getURLPkgPrefixes()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    return-object v0
.end method

.method protected lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Ljavax/naming/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 245
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljavax/naming/NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 248
    throw v0
.end method

.method public requiresLayout()Z
    .locals 1

    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public setInitialContextFactoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "initialContextFactoryName"    # Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "locationInfo"    # Z

    .line 410
    iput-boolean p1, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    .line 411
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setProviderURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerURL"    # Ljava/lang/String;

    .line 350
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setSecurityCredentials(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityCredentials"    # Ljava/lang/String;

    .line 366
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setSecurityPrincipalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityPrincipalName"    # Ljava/lang/String;

    .line 375
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setTopicBindingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicBindingName"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setTopicConnectionFactoryBindingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tcfBindingName"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setURLPkgPrefixes(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlPkgPrefixes"    # Ljava/lang/String;

    .line 358
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .line 390
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    .line 391
    return-void
.end method
