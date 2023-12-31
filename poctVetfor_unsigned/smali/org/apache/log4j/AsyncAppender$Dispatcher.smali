.class Lorg/apache/log4j/AsyncAppender$Dispatcher;
.super Ljava/lang/Object;
.source "AsyncAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/AsyncAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Dispatcher"
.end annotation


# instance fields
.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final buffer:Ljava/util/List;

.field private final discardMap:Ljava/util/Map;

.field private final parent:Lorg/apache/log4j/AsyncAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/log4j/AsyncAppender;
    .param p2, "buffer"    # Ljava/util/List;
    .param p3, "discardMap"    # Ljava/util/Map;
    .param p4, "appenders"    # Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    .line 518
    iput-object p2, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    .line 519
    iput-object p4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 520
    iput-object p3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    .line 521
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 527
    const/4 v0, 0x1

    move v1, v0

    .line 536
    .local v1, "isActive":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 537
    const/4 v2, 0x0

    .line 543
    .local v2, "events":[Lorg/apache/log4j/spi/LoggingEvent;
    :try_start_0
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 545
    .local v4, "bufferSize":I
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v5, v5, Lorg/apache/log4j/AsyncAppender;->closed:Z

    xor-int/2addr v5, v0

    move v1, v5

    .line 547
    :goto_1
    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 548
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 549
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .line 550
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->parent:Lorg/apache/log4j/AsyncAppender;

    iget-boolean v5, v5, Lorg/apache/log4j/AsyncAppender;->closed:Z

    xor-int/2addr v5, v0

    move v1, v5

    goto :goto_1

    .line 553
    :cond_0
    if-lez v4, :cond_2

    .line 554
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v5, v4

    new-array v5, v5, [Lorg/apache/log4j/spi/LoggingEvent;

    move-object v2, v5

    .line 555
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 560
    move v5, v4

    .line 563
    .local v5, "index":I
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 564
    .local v6, "iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 565
    add-int/lit8 v7, v5, 0x1

    .line 565
    .local v7, "index":I
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    invoke-virtual {v8}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->createEvent()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v8

    aput-object v8, v2, v5

    .line 563
    .end local v5    # "index":I
    move v5, v7

    goto :goto_2

    .line 571
    .end local v6    # "iter":Ljava/util/Iterator;
    .end local v7    # "index":I
    .restart local v5    # "index":I
    :cond_1
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 572
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->discardMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 576
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->buffer:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 578
    .end local v4    # "bufferSize":I
    .end local v5    # "index":I
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    if-eqz v2, :cond_3

    .line 584
    const/4 v3, 0x0

    .line 584
    .local v3, "i":I
    :goto_3
    :try_start_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 585
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 586
    :try_start_3
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender$Dispatcher;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 587
    monitor-exit v4

    .line 584
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 590
    .end local v2    # "events":[Lorg/apache/log4j/spi/LoggingEvent;
    .end local v3    # "i":I
    :cond_3
    goto/16 :goto_0

    .line 578
    .restart local v2    # "events":[Lorg/apache/log4j/spi/LoggingEvent;
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 591
    .end local v2    # "events":[Lorg/apache/log4j/spi/LoggingEvent;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 592
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    goto :goto_4

    .line 593
    :cond_4
    nop

    .line 594
    :goto_4
    return-void
.end method
