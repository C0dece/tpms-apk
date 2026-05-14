.class Lcom/tpms/biz/Tpms$2;
.super Ljava/lang/Object;
.source "Tpms.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/biz/Tpms;->showAlarmDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/biz/Tpms;


# direct methods
.method constructor <init>(Lcom/tpms/biz/Tpms;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/biz/Tpms;

    .line 564
    iput-object p1, p0, Lcom/tpms/biz/Tpms$2;->this$0:Lcom/tpms/biz/Tpms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 569
    iget-object v0, p0, Lcom/tpms/biz/Tpms$2;->this$0:Lcom/tpms/biz/Tpms;

    iget-object v0, v0, Lcom/tpms/biz/Tpms;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 570
    return-void
.end method
