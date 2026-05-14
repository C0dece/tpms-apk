.class public Lcom/lidroid/xutils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static inject(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 49
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    .line 50
    return-void
.end method

.method public static inject(Landroid/preference/PreferenceActivity;)V
    .locals 1
    .param p0, "preferenceActivity"    # Landroid/preference/PreferenceActivity;

    .line 53
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    .line 54
    return-void
.end method

.method public static inject(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 45
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    .line 46
    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 1
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 61
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    .line 62
    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceActivity;)V
    .locals 1
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "preferenceActivity"    # Landroid/preference/PreferenceActivity;

    .line 69
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    .line 70
    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .line 65
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceGroup;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    .line 66
    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    .line 57
    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    .line 58
    return-void
.end method

.method private static injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V
    .locals 25
    .param p0, "handler"    # Ljava/lang/Object;
    .param p1, "finder"    # Lcom/lidroid/xutils/view/ViewFinder;

    .line 75
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 78
    .local v3, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/lidroid/xutils/view/annotation/ContentView;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/lidroid/xutils/view/annotation/ContentView;

    .line 79
    .local v4, "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 81
    :try_start_0
    const-string v0, "setContentView"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    .local v0, "setContentViewMethod":Ljava/lang/reflect/Method;
    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/lidroid/xutils/view/annotation/ContentView;->value()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    nop

    .end local v0    # "setContentViewMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 90
    .local v7, "fields":[Ljava/lang/reflect/Field;
    if-eqz v7, :cond_5

    array-length v0, v7

    if-lez v0, :cond_5

    .line 91
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    aget-object v10, v7, v9

    .line 92
    .local v10, "field":Ljava/lang/reflect/Field;
    const-class v0, Lcom/lidroid/xutils/view/annotation/ViewInject;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/lidroid/xutils/view/annotation/ViewInject;

    .line 93
    .local v11, "viewInject":Lcom/lidroid/xutils/view/annotation/ViewInject;
    if-eqz v11, :cond_2

    .line 95
    :try_start_1
    invoke-interface {v11}, Lcom/lidroid/xutils/view/annotation/ViewInject;->value()I

    move-result v0

    invoke-interface {v11}, Lcom/lidroid/xutils/view/annotation/ViewInject;->parentId()I

    move-result v12

    invoke-virtual {v2, v0, v12}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-virtual {v10, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .end local v0    # "view":Landroid/view/View;
    goto :goto_2

    :catchall_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 104
    :cond_2
    const-class v0, Lcom/lidroid/xutils/view/annotation/ResInject;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/lidroid/xutils/view/annotation/ResInject;

    .line 105
    .local v12, "resInject":Lcom/lidroid/xutils/view/annotation/ResInject;
    if-eqz v12, :cond_3

    .line 108
    :try_start_2
    invoke-interface {v12}, Lcom/lidroid/xutils/view/annotation/ResInject;->type()Lcom/lidroid/xutils/view/ResType;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/lidroid/xutils/view/ViewFinder;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-interface {v12}, Lcom/lidroid/xutils/view/annotation/ResInject;->id()I

    move-result v14

    .line 107
    invoke-static {v0, v13, v14}, Lcom/lidroid/xutils/view/ResLoader;->loadRes(Lcom/lidroid/xutils/view/ResType;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "res":Ljava/lang/Object;
    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    invoke-virtual {v10, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    .end local v0    # "res":Ljava/lang/Object;
    goto :goto_2

    :catchall_2
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 117
    :cond_3
    const-class v0, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    .line 118
    .local v13, "preferenceInject":Lcom/lidroid/xutils/view/annotation/PreferenceInject;
    if-eqz v13, :cond_4

    .line 120
    :try_start_3
    invoke-interface {v13}, Lcom/lidroid/xutils/view/annotation/PreferenceInject;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/view/ViewFinder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 121
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_4

    .line 122
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    invoke-virtual {v10, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 125
    .end local v0    # "preference":Landroid/preference/Preference;
    goto :goto_2

    :catchall_3
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "viewInject":Lcom/lidroid/xutils/view/annotation/ViewInject;
    .end local v12    # "resInject":Lcom/lidroid/xutils/view/annotation/ResInject;
    .end local v13    # "preferenceInject":Lcom/lidroid/xutils/view/annotation/PreferenceInject;
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 135
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 136
    .local v8, "methods":[Ljava/lang/reflect/Method;
    if-eqz v8, :cond_e

    array-length v0, v8

    if-lez v0, :cond_e

    .line 137
    array-length v9, v8

    const/4 v10, 0x0

    :goto_4
    if-lt v10, v9, :cond_6

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_f

    :cond_6
    aget-object v11, v8, v10

    .line 138
    .local v11, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    .line 139
    .local v12, "annotations":[Ljava/lang/annotation/Annotation;
    if-eqz v12, :cond_d

    array-length v0, v12

    if-lez v0, :cond_d

    .line 140
    array-length v13, v12

    const/4 v14, 0x0

    :goto_5
    if-lt v14, v13, :cond_7

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_e

    :cond_7
    aget-object v15, v12, v14

    .line 141
    .local v15, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v15}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    .line 142
    .local v6, "annType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 143
    invoke-virtual {v11, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 146
    :try_start_4
    const-string v0, "value"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move-object/from16 v17, v3

    const/4 v5, 0x0

    .end local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v17, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_5
    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object v3, v0

    .line 147
    .local v3, "valueMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 149
    .local v5, "parentIdMethod":Ljava/lang/reflect/Method;
    :try_start_6
    const-string v0, "parentId"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const/4 v4, 0x0

    .end local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .end local v5    # "parentIdMethod":Ljava/lang/reflect/Method;
    .local v18, "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .local v19, "parentIdMethod":Ljava/lang/reflect/Method;
    :try_start_7
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v5, v0

    .line 150
    .end local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "parentIdMethod":Ljava/lang/reflect/Method;
    goto :goto_7

    .end local v5    # "parentIdMethod":Ljava/lang/reflect/Method;
    .restart local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    :catchall_4
    move-exception v0

    goto :goto_6

    .end local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .end local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .restart local v5    # "parentIdMethod":Ljava/lang/reflect/Method;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .end local v5    # "parentIdMethod":Ljava/lang/reflect/Method;
    .restart local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .restart local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    :goto_6
    move-object/from16 v5, v19

    .line 152
    .end local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "parentIdMethod":Ljava/lang/reflect/Method;
    :goto_7
    const/4 v4, 0x0

    :try_start_8
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "values":Ljava/lang/Object;
    if-nez v5, :cond_8

    const/4 v4, 0x0

    move-object/from16 v16, v3

    move-object v3, v4

    const/4 v4, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v16, v3

    const/4 v4, 0x0

    .end local v3    # "valueMethod":Ljava/lang/reflect/Method;
    .local v16, "valueMethod":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v15, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, "parentIds":Ljava/lang/Object;
    :goto_8
    if-nez v3, :cond_9

    const/16 v19, 0x0

    goto :goto_9

    :cond_9
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v19

    :goto_9
    move/from16 v20, v19

    .line 155
    .local v20, "parentIdsLen":I
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v19

    move/from16 v21, v19

    .line 156
    .local v21, "len":I
    const/16 v19, 0x0

    move/from16 v4, v19

    .local v4, "i":I
    :goto_a
    move-object/from16 v19, v5

    move/from16 v5, v21

    .end local v21    # "len":I
    .local v5, "len":I
    .restart local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    if-lt v4, v5, :cond_a

    .line 162
    .end local v0    # "values":Ljava/lang/Object;
    .end local v3    # "parentIds":Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v16    # "valueMethod":Ljava/lang/reflect/Method;
    .end local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    .end local v20    # "parentIdsLen":I
    goto :goto_d

    .line 157
    .restart local v0    # "values":Ljava/lang/Object;
    .restart local v3    # "parentIds":Ljava/lang/Object;
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v16    # "valueMethod":Ljava/lang/reflect/Method;
    .restart local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    .restart local v20    # "parentIdsLen":I
    :cond_a
    new-instance v21, Lcom/lidroid/xutils/view/ViewInjectInfo;

    invoke-direct/range {v21 .. v21}, Lcom/lidroid/xutils/view/ViewInjectInfo;-><init>()V

    move-object/from16 v22, v21

    .line 158
    .local v22, "info":Lcom/lidroid/xutils/view/ViewInjectInfo;
    move/from16 v21, v5

    .end local v5    # "len":I
    .restart local v21    # "len":I
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    .end local v22    # "info":Lcom/lidroid/xutils/view/ViewInjectInfo;
    .local v0, "info":Lcom/lidroid/xutils/view/ViewInjectInfo;
    .local v23, "values":Ljava/lang/Object;
    iput-object v5, v0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    .line 159
    move/from16 v5, v20

    .end local v20    # "parentIdsLen":I
    .local v5, "parentIdsLen":I
    if-le v5, v4, :cond_b

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v24, v20

    move-object/from16 v20, v3

    move/from16 v3, v24

    goto :goto_b

    :cond_b
    move-object/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "parentIds":Ljava/lang/Object;
    .local v20, "parentIds":Ljava/lang/Object;
    :goto_b
    iput v3, v0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    .line 160
    invoke-static {v2, v0, v15, v1, v11}, Lcom/lidroid/xutils/view/EventListenerManager;->addEventMethod(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 156
    .end local v0    # "info":Lcom/lidroid/xutils/view/ViewInjectInfo;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v20

    move-object/from16 v0, v23

    move/from16 v20, v5

    move-object/from16 v5, v19

    goto :goto_a

    .line 162
    .end local v4    # "i":I
    .end local v5    # "parentIdsLen":I
    .end local v16    # "valueMethod":Ljava/lang/reflect/Method;
    .end local v19    # "parentIdMethod":Ljava/lang/reflect/Method;
    .end local v20    # "parentIds":Ljava/lang/Object;
    .end local v21    # "len":I
    .end local v23    # "values":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    goto :goto_c

    .end local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .local v4, "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :catchall_7
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .restart local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    goto :goto_c

    .end local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .local v3, "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :catchall_8
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 163
    .end local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .restart local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :cond_c
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 140
    .end local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .end local v6    # "annType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :goto_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_5

    .line 139
    .end local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .restart local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :cond_d
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 137
    .end local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    .line 136
    .end local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .restart local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 170
    .end local v3    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    .restart local v17    # "handlerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "contentView":Lcom/lidroid/xutils/view/annotation/ContentView;
    :goto_f
    return-void
.end method
