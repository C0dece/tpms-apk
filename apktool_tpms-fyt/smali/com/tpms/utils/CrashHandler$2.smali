.class final Lcom/tpms/utils/CrashHandler$2;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/utils/CrashHandler;->logFileProc(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cont:Landroid/content/Context;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$packName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/tpms/utils/CrashHandler$2;->val$packName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tpms/utils/CrashHandler$2;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tpms/utils/CrashHandler$2;->val$cont:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/tpms/utils/CrashHandler$2;->val$packName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tpms/utils/CrashHandler$2;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tpms/utils/CrashHandler$2;->val$cont:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/tpms/utils/CrashHandler;->access$100(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 340
    return-void
.end method
