.class public Lorg/apache/log4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field static final HT_SIZE:I = 0x7

.field static synthetic class$java$lang$ThreadLocal:Ljava/lang/Class;

.field static final mdc:Lorg/apache/log4j/MDC;


# instance fields
.field java1:Z

.field private removeMethod:Ljava/lang/reflect/Method;

.field tlm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;-><init>()V

    sput-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->isJava1()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    .line 61
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .line 66
    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/log4j/MDC;->class$java$lang$ThreadLocal:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.ThreadLocal"

    invoke-static {v0}, Lorg/apache/log4j/MDC;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/MDC;->class$java$lang$ThreadLocal:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/log4j/MDC;->class$java$lang$ThreadLocal:Ljava/lang/Class;

    :goto_0
    const-string v1, "remove"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/MDC;->removeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 70
    :goto_1
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static clear()V
    .locals 1

    .line 134
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->clear0()V

    .line 137
    :cond_0
    return-void
.end method

.method private clear0()V
    .locals 4

    .line 194
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 196
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/MDC;->removeMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/MDC;->removeMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 205
    .end local v0    # "ht":Ljava/util/Hashtable;
    goto :goto_1

    .line 203
    .restart local v0    # "ht":Ljava/util/Hashtable;
    :catch_1
    move-exception v1

    .line 207
    .end local v0    # "ht":Ljava/util/Hashtable;
    :goto_0
    nop

    .line 210
    :cond_1
    :goto_1
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->get0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private get0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 156
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 160
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 163
    :cond_1
    return-object v1

    .line 157
    .end local v0    # "ht":Ljava/util/Hashtable;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getContext()Ljava/util/Hashtable;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->getContext0()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContext0()Ljava/util/Hashtable;
    .locals 1

    .line 185
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0

    .line 186
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/MDC;->put0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method private put0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 142
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 146
    .local v0, "ht":Ljava/util/Hashtable;
    if-nez v0, :cond_1

    .line 147
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    move-object v0, v1

    .line 148
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->set(Ljava/lang/Object;)V

    .line 150
    :cond_1
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v0    # "ht":Ljava/util/Hashtable;
    return-void

    .line 143
    :cond_2
    :goto_0
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->remove0(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method private remove0(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 170
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 172
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0}, Lorg/apache/log4j/MDC;->clear0()V

    .line 180
    .end local v0    # "ht":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method
