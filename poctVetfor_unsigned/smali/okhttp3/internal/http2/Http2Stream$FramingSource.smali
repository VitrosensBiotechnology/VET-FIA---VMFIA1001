.class final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramingSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.field private trailers:Lokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 339
    const-class v0, Lokhttp3/internal/http2/Http2Stream;

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .locals 0
    .param p2, "maxByteCount"    # J

    .line 364
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 344
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 365
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    .line 366
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 339
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$100(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 339
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokhttp3/Headers;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 339
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$202(Lokhttp3/internal/http2/Http2Stream$FramingSource;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/http2/Http2Stream$FramingSource;
    .param p1, "x1"    # Lokhttp3/Headers;

    .line 339
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object p1
.end method

.method private updateConnectionFlowControl(J)V
    .locals 1
    .param p1, "read"    # J

    .line 434
    nop

    .line 435
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 436
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 485
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 486
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 487
    .local v1, "bytesDiscarded":J
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 488
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 489
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 491
    invoke-direct {p0, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 493
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 494
    return-void

    .line 489
    .end local v1    # "bytesDiscarded":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 11
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    .line 373
    .local v2, "readBytesDelivered":J
    const/4 v4, 0x0

    .line 377
    .local v4, "errorExceptionToDeliver":Ljava/io/IOException;
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v5

    .line 378
    :try_start_0
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    :try_start_1
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v6, :cond_2

    .line 382
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v6, :cond_1

    .line 383
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    goto :goto_1

    .line 384
    :cond_1
    new-instance v6, Lokhttp3/internal/http2/StreamResetException;

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v7, v7, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v6, v7}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_1
    move-object v4, v6

    .line 387
    :cond_2
    iget-boolean v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v6, :cond_3

    .line 388
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_3
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-lez v8, :cond_4

    .line 392
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v6, p1, v7, v8}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v6

    move-wide v2, v6

    .line 393
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v7, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long v9, v7, v2

    iput-wide v9, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 395
    if-nez v4, :cond_5

    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v6, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 397
    invoke-virtual {v8}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_5

    .line 400
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object v7, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget v7, v7, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v8, v8, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v6, v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 401
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iput-wide v0, v6, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    goto :goto_2

    .line 403
    :cond_4
    iget-boolean v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v6, :cond_5

    if-nez v4, :cond_5

    .line 405
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :try_start_2
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v6}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v5

    goto/16 :goto_0

    :cond_5
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 410
    nop

    .line 411
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 415
    const-wide/16 v0, -0x1

    cmp-long v5, v2, v0

    if-eqz v5, :cond_6

    .line 417
    invoke-direct {p0, v2, v3}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 418
    return-wide v2

    .line 421
    :cond_6
    if-eqz v4, :cond_7

    .line 426
    throw v4

    .line 429
    :cond_7
    return-wide v0

    .line 409
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    .line 411
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method receive(Lokio/BufferedSource;J)V
    .locals 12
    .param p1, "in"    # Lokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    nop

    .line 441
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 444
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 445
    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 446
    .local v3, "finished":Z
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long v6, p2, v4

    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    cmp-long v8, v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v8, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v4

    .line 447
    .local v6, "flowControlError":Z
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 450
    if-eqz v6, :cond_1

    .line 451
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 452
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    .line 453
    return-void

    .line 457
    :cond_1
    if-eqz v3, :cond_2

    .line 458
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 459
    return-void

    .line 463
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v7

    .line 464
    .local v7, "read":J
    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 465
    :cond_3
    sub-long v9, p2, v7

    .line 468
    .end local p2    # "byteCount":J
    .local v9, "byteCount":J
    iget-object v11, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v11

    .line 469
    :try_start_1
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->size()J

    move-result-wide p2

    cmp-long v2, p2, v0

    if-nez v2, :cond_4

    move v4, v5

    nop

    :cond_4
    move p2, v4

    .line 470
    .local p2, "wasEmpty":Z
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {p3, v0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 471
    if-eqz p2, :cond_5

    .line 472
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 474
    .end local p2    # "wasEmpty":Z
    :cond_5
    monitor-exit v11

    .line 475
    .end local v3    # "finished":Z
    .end local v6    # "flowControlError":Z
    .end local v7    # "read":J
    nop

    .line 441
    move-wide p2, v9

    goto :goto_0

    .line 474
    .restart local v3    # "finished":Z
    .restart local v6    # "flowControlError":Z
    .restart local v7    # "read":J
    :catchall_0
    move-exception p2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 447
    .end local v3    # "finished":Z
    .end local v6    # "flowControlError":Z
    .end local v7    # "read":J
    .end local v9    # "byteCount":J
    .local p2, "byteCount":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 476
    :cond_6
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 479
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
