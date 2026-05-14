.class Lcom/tpms/view/SetActivity$2;
.super Ljava/lang/Object;
.source "SetActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/view/SetActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/view/SetActivity;


# direct methods
.method constructor <init>(Lcom/tpms/view/SetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/view/SetActivity;

    .line 193
    iput-object p1, p0, Lcom/tpms/view/SetActivity$2;->this$0:Lcom/tpms/view/SetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/tpms/view/SetActivity$2;->this$0:Lcom/tpms/view/SetActivity;

    invoke-virtual {v0, p2}, Lcom/tpms/view/SetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    .local v0, "fragmentClsName":Ljava/lang/String;
    iget-object v1, p0, Lcom/tpms/view/SetActivity$2;->this$0:Lcom/tpms/view/SetActivity;

    invoke-static {v1, v0}, Lcom/tpms/view/SetActivity;->access$000(Lcom/tpms/view/SetActivity;Ljava/lang/String;)Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    nop

    .end local v0    # "fragmentClsName":Ljava/lang/String;
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
