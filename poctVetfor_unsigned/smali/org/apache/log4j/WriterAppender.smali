.class public Lorg/apache/log4j/WriterAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "WriterAppender.java"


# instance fields
.field protected encoding:Ljava/lang/String;

.field protected immediateFlush:Z

.field protected qw:Lorg/apache/log4j/helpers/QuietWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "os"    # Ljava/io/OutputStream;

    .line 85
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/WriterAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/io/Writer;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/io/Writer;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "writer"    # Ljava/io/Writer;

    .line 95
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 96
    iput-object p1, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    .line 97
    invoke-virtual {p0, p2}, Lorg/apache/log4j/WriterAppender;->setWriter(Ljava/io/Writer;)V

    .line 98
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .line 132
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 159
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/log4j/WriterAppender;->subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 163
    return-void
.end method

.method protected checkEntryConditions()Z
    .locals 4

    .line 173
    iget-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "Not allowed to write to a closed appender."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 175
    return v1

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No output stream or file set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 181
    return v1

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No layout set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 186
    return v1

    .line 188
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 204
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->closed:Z

    .line 206
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeFooter()V

    .line 207
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected closeWriter()V
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v0, :cond_1

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/QuietWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_0

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 223
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 236
    const/4 v0, 0x0

    .line 238
    .local v0, "retval":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "enc":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 241
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 248
    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/io/IOException;
    instance-of v3, v2, Ljava/io/InterruptedIOException;

    if-eqz v3, :cond_0

    .line 244
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 246
    :cond_0
    const-string v3, "Error initializing output writer."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 247
    const-string v3, "Unsupported encoding?"

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 251
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 253
    :cond_2
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediateFlush()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method protected reset()V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->closeWriter()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 349
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lorg/apache/log4j/WriterAppender;->encoding:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public declared-synchronized setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    .locals 1
    .param p1, "eh"    # Lorg/apache/log4j/spi/ErrorHandler;

    monitor-enter p0

    .line 271
    if-nez p1, :cond_0

    .line 272
    :try_start_0
    const-string v0, "You have tried to set a null error-handler."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local p1    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 274
    .restart local p1    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/WriterAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    .line 275
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/QuietWriter;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    .end local p1    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setImmediateFlush(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 116
    iput-boolean p1, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    .line 117
    return-void
.end method

.method public declared-synchronized setWriter(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->reset()V

    .line 295
    new-instance v0, Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    .line 297
    invoke-virtual {p0}, Lorg/apache/log4j/WriterAppender;->writeHeader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 293
    .end local p1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected shouldFlush(Lorg/apache/log4j/spi/LoggingEvent;)Z
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 385
    iget-boolean v0, p0, Lorg/apache/log4j/WriterAppender;->immediateFlush:Z

    return v0
.end method

.method protected subAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .line 310
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 315
    array-length v1, v0

    .line 316
    .local v1, "len":I
    const/4 v2, 0x0

    .line 316
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 317
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    sget-object v4, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "s":[Ljava/lang/String;
    .end local v1    # "len":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/log4j/WriterAppender;->shouldFlush(Lorg/apache/log4j/spi/LoggingEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/QuietWriter;->flush()V

    .line 326
    :cond_1
    return-void
.end method

.method protected writeFooter()V
    .locals 2

    .line 357
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "f":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/QuietWriter;->flush()V

    .line 364
    .end local v0    # "f":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected writeHeader()V
    .locals 2

    .line 371
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/apache/log4j/WriterAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lorg/apache/log4j/WriterAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    .line 376
    .end local v0    # "h":Ljava/lang/String;
    :cond_0
    return-void
.end method
