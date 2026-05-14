.class public Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
.super Landroid/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombManagerFragment"
.end annotation


# instance fields
.field protected argumentsForErrorDialog:Landroid/os/Bundle;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private executionScope:Ljava/lang/Object;

.field protected finishAfterDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static attachTo(Landroid/app/Activity;Ljava/lang/Object;ZLandroid/os/Bundle;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "executionScope"    # Ljava/lang/Object;
    .param p2, "finishAfterDialog"    # Z
    .param p3, "argumentsForErrorDialog"    # Landroid/os/Bundle;

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 147
    .local v0, "fm":Landroid/app/FragmentManager;
    nop

    .line 148
    const-string v1, "de.greenrobot.eventbus.error_dialog_manager"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 147
    check-cast v2, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;

    .line 149
    .local v2, "fragment":Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
    if-nez v2, :cond_0

    .line 150
    new-instance v3, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;

    invoke-direct {v3}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;-><init>()V

    move-object v2, v3

    .line 151
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 152
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 154
    :cond_0
    iput-boolean p2, v2, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    .line 155
    iput-object p3, v2, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 156
    iput-object p1, v2, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    .line 157
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lde/greenrobot/event/util/ThrowableFailureEvent;)V
    .locals 6
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;

    .line 122
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->executionScope:Ljava/lang/Object;

    invoke-static {v0, p1}, Lde/greenrobot/event/util/ErrorDialogManager;->access$0(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Lde/greenrobot/event/util/ErrorDialogManager;->checkLogException(Lde/greenrobot/event/util/ThrowableFailureEvent;)V

    .line 128
    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 129
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 131
    nop

    .line 132
    const-string v1, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 131
    check-cast v2, Landroid/app/DialogFragment;

    .line 133
    .local v2, "existingFragment":Landroid/app/DialogFragment;
    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 138
    :cond_1
    sget-object v3, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    .line 139
    iget-boolean v4, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->finishAfterDialog:Z

    iget-object v5, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->argumentsForErrorDialog:Landroid/os/Bundle;

    .line 138
    invoke-virtual {v3, p1, v4, v5}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DialogFragment;

    .line 140
    .local v3, "errorFragment":Landroid/app/DialogFragment;
    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {v3, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 143
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 117
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 111
    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    invoke-virtual {v0}, Lde/greenrobot/event/util/ErrorDialogConfig;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->eventBus:Lde/greenrobot/event/EventBus;

    .line 112
    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 113
    return-void
.end method
