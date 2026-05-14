.class public Lcom/tpms/utils/CrashHandler$MailSenderInfo;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/utils/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MailSenderInfo"
.end annotation


# instance fields
.field private attachFileNames:[Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private fromAddress:Ljava/lang/String;

.field private mailServerHost:Ljava/lang/String;

.field private mailServerPort:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/tpms/utils/CrashHandler;

.field private toAddress:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private validate:Z


# direct methods
.method public constructor <init>(Lcom/tpms/utils/CrashHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tpms/utils/CrashHandler;

    .line 92
    iput-object p1, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->this$0:Lcom/tpms/utils/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "smtp.126.com"

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->mailServerHost:Ljava/lang/String;

    .line 95
    const-string v0, "25"

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->mailServerPort:Ljava/lang/String;

    .line 98
    const-string v0, "chang19test@126.com"

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->fromAddress:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->toAddress:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->userName:Ljava/lang/String;

    .line 103
    const-string v0, "19ufoufo19"

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->password:Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->validate:Z

    .line 107
    const-string v0, "HCF-BUG"

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->subject:Ljava/lang/String;

    .line 109
    const-string v0, "\u8bf7\u89e3\u51b3\u9644\u4ef6bug"

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;->content:Ljava/lang/String;

    return-void
.end method
