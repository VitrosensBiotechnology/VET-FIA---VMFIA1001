.class public abstract Lorg/slf4j/helpers/MarkerIgnoringBase;
.super Lorg/slf4j/helpers/NamedLoggerBase;
.source "MarkerIgnoringBase.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final serialVersionUID:J = 0x7d83b1554e5d279bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/slf4j/helpers/NamedLoggerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, p2, p3, p4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 88
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 84
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 153
    invoke-virtual {p0, p2, p3, p4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 161
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 157
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 104
    invoke-virtual {p0, p2, p3, p4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 112
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 68
    invoke-virtual {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 141
    invoke-virtual {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 92
    invoke-virtual {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 44
    invoke-virtual {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 116
    invoke-virtual {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 52
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 56
    invoke-virtual {p0, p2, p3, p4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 64
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .line 120
    invoke-virtual {p0, p2}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p2, p3, p4}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 136
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p2, p3}, Lorg/slf4j/helpers/MarkerIgnoringBase;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method
