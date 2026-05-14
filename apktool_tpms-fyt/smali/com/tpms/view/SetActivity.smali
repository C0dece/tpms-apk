.class public Lcom/tpms/view/SetActivity;
.super Landroid/app/Activity;
.source "SetActivity.java"


# instance fields
.field Fragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field app:Lcom/syt/tmps/TpmsApplication;

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field private final filterReceiver:Landroid/content/BroadcastReceiver;

.field mBackLeft:Lcom/tpms/modle/TiresState;

.field mBackRight:Lcom/tpms/modle/TiresState;

.field mFrontLeft:Lcom/tpms/modle/TiresState;

.field mFrontRight:Lcom/tpms/modle/TiresState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, "difengze.com-TpmsMainActivity"

    iput-object v0, p0, Lcom/tpms/view/SetActivity;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/SetActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 63
    iput-object v0, p0, Lcom/tpms/view/SetActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 101
    new-instance v0, Lcom/tpms/view/SetActivity$1;

    invoke-direct {v0, p0}, Lcom/tpms/view/SetActivity$1;-><init>(Lcom/tpms/view/SetActivity;)V

    iput-object v0, p0, Lcom/tpms/view/SetActivity;->filterReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tpms/view/SetActivity;->Fragments:Ljava/util/Map;

    return-void
.end method

.method private ShowFragment(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/tpms/view/SetActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 152
    .local v0, "ft":Landroid/app/FragmentTransaction;
    :try_start_0
    iget-object v1, p0, Lcom/tpms/view/SetActivity;->Fragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 153
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 154
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    move-object v1, v2

    .line 155
    iget-object v2, p0, Lcom/tpms/view/SetActivity;->Fragments:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const v2, 0x7f06005a

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/tpms/view/SetActivity;->Fragments:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 160
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/Fragment;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 161
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/Fragment;>;"
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 164
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-object v1

    .line 167
    .end local v1    # "fg":Landroid/app/Fragment;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic access$000(Lcom/tpms/view/SetActivity;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/tpms/view/SetActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/tpms/view/SetActivity;->ShowFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 3

    .line 175
    invoke-virtual {p0}, Lcom/tpms/view/SetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "framgent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "bshowfragment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-direct {p0, v0}, Lcom/tpms/view/SetActivity;->ShowFragment(Ljava/lang/String;)Landroid/app/Fragment;

    goto :goto_0

    .line 179
    :cond_0
    const-string v1, "com.tpms.view.SetDetailActivity"

    invoke-direct {p0, v1}, Lcom/tpms/view/SetActivity;->ShowFragment(Ljava/lang/String;)Landroid/app/Fragment;

    .line 192
    :goto_0
    const v1, 0x7f06009a

    invoke-virtual {p0, v1}, Lcom/tpms/view/SetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 193
    .local v1, "RG":Landroid/widget/RadioGroup;
    new-instance v2, Lcom/tpms/view/SetActivity$2;

    invoke-direct {v2, p0}, Lcom/tpms/view/SetActivity$2;-><init>(Lcom/tpms/view/SetActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 210
    return-void
.end method


# virtual methods
.method public back_ui(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060015
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/tpms/view/SetActivity;->finish()V

    .line 215
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/tpms/view/SetActivity;->setContentView(I)V

    .line 70
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 72
    invoke-virtual {p0}, Lcom/tpms/view/SetActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/syt/tmps/TpmsApplication;

    iput-object v0, p0, Lcom/tpms/view/SetActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 74
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/view/SetActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/tpms/view/SetActivity;->filterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tpms/view/SetActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    const-string v1, ""

    .line 82
    .local v1, "title":Ljava/lang/String;
    const-string v2, "difengze.com"

    const-string v3, "onCreate SetActivity"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/tpms/view/SetActivity;->initView()V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tpms/view/SetActivity;->filterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tpms/view/SetActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/tpms/view/SetActivity;->finish()V

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 124
    return-void
.end method
