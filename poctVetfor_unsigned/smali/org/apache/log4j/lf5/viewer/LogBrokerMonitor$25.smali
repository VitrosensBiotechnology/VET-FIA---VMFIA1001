.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$25;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$25;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 1151
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$25;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->findSearchText()V

    .line 1152
    return-void
.end method
