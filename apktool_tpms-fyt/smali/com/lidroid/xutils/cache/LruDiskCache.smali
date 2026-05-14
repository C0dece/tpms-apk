.class public final Lcom/lidroid/xutils/cache/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/cache/LruDiskCache$Editor;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Entry;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;,
        Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:C = 'C'

.field private static final DELETE:C = 'D'

.field private static final EXPIRY_PREFIX:C = 't'

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:C = 'R'

.field private static final UPDATE:C = 'U'

.field static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/cache/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 791
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$2;

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 796
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 170
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 138
    nop

    .line 139
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 147
    iput-wide v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    .line 152
    nop

    .line 153
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 154
    new-instance v2, Lcom/lidroid/xutils/cache/LruDiskCache$1;

    invoke-direct {v2, p0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 1213
    new-instance v2, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;

    invoke-direct {v2}, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;-><init>()V

    iput-object v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 171
    iput-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    .line 172
    move/from16 v2, p2

    iput v2, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    .line 173
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    .line 174
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    .line 175
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.bkp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    .line 176
    move/from16 v3, p3

    iput v3, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    .line 177
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    .line 178
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z
    .locals 0

    .line 632
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    invoke-static {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7(Lcom/lidroid/xutils/cache/LruDiskCache;)I
    .locals 0

    .line 135
    iget p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    return p0
.end method

.method static synthetic access$8(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$9()Ljava/io/OutputStream;
    .locals 1

    .line 791
    sget-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 687
    return-void

    .line 685
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .locals 10
    .param p1, "editor"    # Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 574
    :try_start_0
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    move-result-object v0

    .line 575
    .local v0, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_b

    .line 580
    if-eqz p2, :cond_3

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 582
    :cond_0
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    .line 586
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 587
    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    monitor-exit p0

    return-void

    .line 581
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V

    .line 584
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Newly created entry didn\'t create value for index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_8

    .line 609
    .end local v1    # "i":I
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 610
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 611
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    if-eqz v1, :cond_4

    .line 612
    invoke-static {v0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    .line 613
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "C "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x74

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 614
    if-eqz p2, :cond_5

    .line 615
    iget-wide v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$11(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    .line 617
    goto :goto_3

    .line 618
    :cond_4
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "D "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 621
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 623
    iget-wide v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 624
    :cond_6
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :cond_7
    monitor-exit p0

    return-void

    .line 594
    .restart local v1    # "i":I
    :cond_8
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 595
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_9

    .line 596
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 597
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 598
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 599
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    move-wide v4, v5

    .line 600
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 601
    .local v6, "newLength":J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 602
    iget-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 604
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_4

    .line 605
    :cond_9
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 593
    .end local v2    # "dirty":Ljava/io/File;
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 576
    .end local v1    # "i":I
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    .end local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local p1    # "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1057
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_4

    .line 1060
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 1068
    return-void

    .line 1060
    :cond_0
    aget-object v3, v0, v2

    .line 1061
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    invoke-static {v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 1064
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1065
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1060
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not a readable directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 403
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 5
    .param p1, "diskKey"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 518
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 519
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 520
    .local v0, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    .line 521
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 522
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 524
    :cond_1
    if-nez v0, :cond_2

    .line 525
    :try_start_1
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-direct {v1, p0, p1, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    move-object v0, v1

    .line 526
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 527
    :cond_2
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 528
    monitor-exit p0

    return-object v3

    .line 527
    :cond_3
    :goto_0
    nop

    .line 531
    :try_start_2
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    invoke-direct {v1, p0, v0, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 532
    .local v1, "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 535
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "U "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    monitor-exit p0

    return-object v1

    .line 517
    .end local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local v1    # "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .end local p1    # "diskKey":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .locals 11
    .param p1, "diskKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 450
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 451
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    .line 452
    .local v9, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    const/4 v1, 0x0

    if-nez v9, :cond_0

    .line 453
    monitor-exit p0

    return-object v1

    .line 456
    :cond_0
    :try_start_1
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 457
    monitor-exit p0

    return-object v1

    .line 461
    :cond_1
    :try_start_2
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v0, 0xa

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    .line 462
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 470
    .end local v2    # "i":I
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 471
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "D "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 472
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 463
    .restart local v2    # "i":I
    :cond_3
    :try_start_3
    invoke-virtual {v9, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 464
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 465
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_5
    :goto_1
    iget-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v6

    aget-wide v7, v6, v2

    sub-long/2addr v4, v7

    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 468
    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v4

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 462
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v2    # "i":I
    :cond_6
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    new-array v2, v2, [Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v2

    .line 484
    .local v10, "ins":[Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    :try_start_4
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v2, v3, :cond_8

    .line 487
    .end local v2    # "i":I
    nop

    .line 499
    :try_start_5
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 500
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "R "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 501
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 502
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 505
    :cond_7
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v4

    invoke-static {v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    invoke-direct/range {v1 .. v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/lidroid/xutils/cache/LruDiskCache$Snapshot;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 485
    .restart local v2    # "i":I
    :cond_8
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v9, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v10, v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 487
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    :try_start_7
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_9

    goto :goto_4

    .line 490
    :cond_9
    aget-object v3, v10, v2

    if-eqz v3, :cond_a

    .line 491
    aget-object v3, v10, v2

    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 496
    .end local v2    # "i":I
    :cond_a
    :goto_4
    monitor-exit p0

    return-object v1

    .line 449
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local v10    # "ins":[Ljava/io/FileInputStream;
    .end local p1    # "diskKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .line 633
    const/16 v0, 0x7d0

    .line 634
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    .line 634
    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;
    .locals 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_6

    .line 194
    if-lez p2, :cond_5

    .line 199
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v1, "journalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    goto :goto_0

    .line 206
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 211
    .end local v1    # "journalFile":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 212
    .local v1, "cache":Lcom/lidroid/xutils/cache/LruDiskCache;
    iget-object v2, v1, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    :try_start_0
    invoke-direct {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournal()V

    .line 215
    invoke-direct {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->processJournal()V

    .line 216
    new-instance v2, Ljava/io/BufferedWriter;

    .line 217
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 216
    iput-object v2, v1, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    return-object v1

    .line 219
    :catchall_0
    move-exception v2

    .line 220
    .local v2, "journalIsCorrupt":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    nop

    .line 220
    invoke-static {v3, v2}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    .line 230
    .end local v2    # "journalIsCorrupt":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    :cond_3
    new-instance v2, Lcom/lidroid/xutils/cache/LruDiskCache;

    move-object v3, v2

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    move-object v1, v2

    .line 232
    invoke-direct {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    .line 234
    :cond_4
    return-object v1

    .line 195
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v1    # "cache":Lcom/lidroid/xutils/cache/LruDiskCache;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 338
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lidroid/xutils/cache/LruDiskCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lidroid/xutils/cache/LruDiskCache$Entry;>;"
    return-void

    .line 339
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lidroid/xutils/cache/LruDiskCache$Entry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 340
    .local v1, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    if-nez v2, :cond_2

    .line 341
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_1

    .line 344
    .end local v2    # "t":I
    goto :goto_0

    .line 342
    .restart local v2    # "t":I
    :cond_1
    iget-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    .end local v2    # "t":I
    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 346
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 350
    .end local v2    # "t":I
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 347
    .restart local v2    # "t":I
    :cond_3
    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 348
    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1036
    const/4 v0, 0x0

    .line 1038
    .local v0, "writer":Ljava/io/StringWriter;
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    move-object v0, v1

    .line 1039
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 1041
    .local v1, "buffer":[C
    nop

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1044
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1047
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1044
    return-object v2

    .line 1042
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1045
    .end local v1    # "buffer":[C
    .end local v3    # "count":I
    :catchall_0
    move-exception v1

    .line 1046
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1047
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1048
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const-string v0, ", "

    const/4 v1, 0x0

    .line 240
    .local v1, "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    :try_start_0
    new-instance v2, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, p0, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V

    move-object v1, v2

    .line 241
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "magic":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 247
    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 248
    iget v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 249
    iget v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    .local v0, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    goto :goto_0

    :catch_0
    move-exception v7

    .line 264
    :try_start_2
    iget-object v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v0, v7

    iput v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .end local v0    # "lineCount":I
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    nop

    .line 266
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    return-void

    .line 251
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_0
    :try_start_3
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected journal header: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "reader":Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    :catchall_0
    move-exception v0

    .line 266
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 267
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 272
    .local v1, "firstSpace":I
    const/4 v2, 0x0

    .line 273
    .local v2, "lineTag":C
    const-string v3, "unexpected journal line: "

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    .line 274
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 275
    nop

    .line 279
    add-int/lit8 v6, v1, 0x1

    .line 280
    .local v6, "keyBegin":I
    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 282
    .local v0, "secondSpace":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 283
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "diskKey":Ljava/lang/String;
    const/16 v8, 0x44

    if-ne v2, v8, :cond_1

    .line 285
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void

    .line 289
    .end local v7    # "diskKey":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 292
    .restart local v7    # "diskKey":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 293
    .local v8, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 294
    new-instance v10, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-direct {v10, p0, v7, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    move-object v8, v10

    .line 295
    iget-object v10, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_2
    const/16 v10, 0x43

    if-eq v2, v10, :cond_5

    const/16 v4, 0x52

    if-eq v2, v4, :cond_4

    const/16 v4, 0x55

    if-ne v2, v4, :cond_3

    .line 319
    new-instance v3, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    invoke-direct {v3, p0, v8, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    invoke-static {v8, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 320
    goto :goto_0

    .line 327
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    :cond_4
    goto :goto_0

    .line 300
    :cond_5
    invoke-static {v8, v4}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    .line 301
    invoke-static {v8, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    .line 302
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "parts":[Ljava/lang/String;
    array-length v10, v9

    if-lez v10, :cond_7

    .line 305
    :try_start_0
    aget-object v10, v9, v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x74

    if-ne v10, v11, :cond_6

    .line 306
    aget-object v5, v9, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    .line 307
    invoke-static {v8, v9, v4}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V

    .line 308
    goto :goto_0

    .line 309
    :cond_6
    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v8, v10, v11}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    .line 310
    invoke-static {v8, v9, v5}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    goto :goto_0

    :catchall_0
    move-exception v4

    .line 313
    .local v4, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 330
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v9    # "parts":[Ljava/lang/String;
    :cond_7
    :goto_0
    return-void

    .line 276
    .end local v0    # "secondSpace":I
    .end local v6    # "keyBegin":I
    .end local v7    # "diskKey":Ljava/lang/String;
    .end local v8    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :cond_0
    const/4 v0, 0x0

    .line 366
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 367
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 366
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 368
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 376
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 385
    nop

    .line 386
    :try_start_2
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 389
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v1, v3, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 393
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 395
    new-instance v1, Ljava/io/BufferedWriter;

    .line 396
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v2, "US-ASCII"

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 395
    iput-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    monitor-exit p0

    return-void

    .line 378
    :cond_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 379
    .local v2, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_3

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "U "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    goto :goto_0

    .line 382
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "C "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x74

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 385
    .end local v2    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :catchall_0
    move-exception v1

    .line 386
    :try_start_4
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 387
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized removeByDiskKey(Ljava/lang/String;)Z
    .locals 8
    .param p1, "diskKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 650
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 651
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 652
    .local v0, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 656
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_2

    .line 665
    .end local v1    # "i":I
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    .line 666
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "D "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 667
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :cond_1
    monitor-exit p0

    return v2

    .line 657
    .restart local v1    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 658
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 659
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    :cond_4
    :goto_1
    iget-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v1

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    .line 662
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "i":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 649
    .end local v0    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local p1    # "diskKey":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    if-eqz p2, :cond_0

    .line 407
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    return-void

    .line 410
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    nop

    :goto_0
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 721
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 704
    monitor-exit p0

    return-void

    .line 706
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 711
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    .line 712
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 706
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    .line 707
    .local v1, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 708
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 702
    .end local v1    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 730
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 731
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "diskKey":Ljava/lang/String;
    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 693
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 694
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    .line 695
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 692
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v1

    return-object v1
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 426
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "diskKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    return-object v1

    .line 432
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 435
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    .line 417
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    .local v1, "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    if-nez v1, :cond_0

    .line 419
    const-wide/16 v2, 0x0

    monitor-exit p0

    return-wide v2

    .line 421
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2

    .line 414
    .end local v0    # "diskKey":Ljava/lang/String;
    .end local v1    # "entry":Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 552
    :try_start_0
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .locals 0
    .param p1, "fileNameGenerator"    # Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 1220
    if-eqz p1, :cond_0

    .line 1221
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    .line 1223
    :cond_0
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 560
    :try_start_0
    iput-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    .line 561
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 559
    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    .end local p1    # "maxSize":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 570
    :try_start_0
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/lidroid/xutils/cache/LruDiskCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
