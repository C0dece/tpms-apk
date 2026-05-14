.class public Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Support;
.super Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Support"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/event/util/ErrorDialogFragmentFactory<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/event/util/ErrorDialogConfig;

    .line 73
    invoke-direct {p0, p1}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;-><init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 77
    new-instance v0, Lde/greenrobot/event/util/ErrorDialogFragments$Support;

    invoke-direct {v0}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;-><init>()V

    .line 78
    .local v0, "errorFragment":Lde/greenrobot/event/util/ErrorDialogFragments$Support;
    invoke-virtual {v0, p2}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v0
.end method

.method protected bridge synthetic createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Support;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
