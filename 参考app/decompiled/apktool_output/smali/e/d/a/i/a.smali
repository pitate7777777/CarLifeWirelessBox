.class public final Le/d/a/i/a;
.super Le/d/a/i/c;
.source ""


# instance fields
.field public e:Le/d/a/h/a;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveText"

    invoke-static {p4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Le/d/a/f;->PermissionXDefaultDialog:I

    invoke-direct {p0, p1, v0}, Le/d/a/i/c;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Le/d/a/i/a;->f:Ljava/util/List;

    iput-object p3, p0, Le/d/a/i/a;->g:Ljava/lang/String;

    iput-object p4, p0, Le/d/a/i/a;->h:Ljava/lang/String;

    iput-object p5, p0, Le/d/a/i/a;->i:Ljava/lang/String;

    iput p6, p0, Le/d/a/i/a;->j:I

    iput p7, p0, Le/d/a/i/a;->k:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1
    sget v2, Le/d/a/d;->permissionx_default_dialog_layout:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v2, Le/d/a/c;->messageText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/widget/TextView;

    const-string v5, "Missing required view with ID: "

    if-eqz v8, :cond_1c

    sget v2, Le/d/a/c;->negativeBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_1c

    sget v2, Le/d/a/c;->negativeLayout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_1c

    sget v2, Le/d/a/c;->permissionsLayout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_1c

    sget v2, Le/d/a/c;->positiveBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_1c

    sget v2, Le/d/a/c;->positiveLayout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_1c

    new-instance v2, Le/d/a/h/a;

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Le/d/a/h/a;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    const-string v0, "PermissionxDefaultDialog\u2026g.inflate(layoutInflater)"

    .line 3
    invoke-static {v2, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    const-string v6, "binding"

    if-eqz v2, :cond_1b

    .line 4
    iget-object v0, v2, Le/d/a/h/a;->a:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object v0, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Le/d/a/h/a;->b:Landroid/widget/TextView;

    const-string v2, "binding.messageText"

    invoke-static {v0, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Le/d/a/i/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v0, :cond_19

    iget-object v0, v0, Le/d/a/h/a;->f:Landroid/widget/Button;

    const-string v2, "binding.positiveBtn"

    invoke-static {v0, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Le/d/a/i/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Le/d/a/i/a;->i:Ljava/lang/String;

    const-string v2, "binding.negativeLayout"

    if-eqz v0, :cond_2

    iget-object v0, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/d/a/h/a;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/d/a/h/a;->c:Landroid/widget/Button;

    const-string v2, "binding.negativeBtn"

    invoke-static {v0, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Le/d/a/i/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v0, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v0, :cond_18

    iget-object v0, v0, Le/d/a/h/a;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Le/d/a/i/a;->a()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    iget v0, v1, Le/d/a/i/a;->k:I

    if-eq v0, v2, :cond_8

    iget-object v7, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v7, :cond_4

    iget-object v7, v7, Le/d/a/h/a;->f:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Le/d/a/h/a;->c:Landroid/widget/Button;

    iget v7, v1, Le/d/a/i/a;->k:I

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget v0, v1, Le/d/a/i/a;->j:I

    if-eq v0, v2, :cond_8

    iget-object v7, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v7, :cond_7

    iget-object v7, v7, Le/d/a/h/a;->f:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v0, :cond_6

    iget-object v0, v0, Le/d/a/h/a;->c:Landroid/widget/Button;

    iget v7, v1, Le/d/a/i/a;->j:I

    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    :cond_6
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v3

    .line 7
    :cond_8
    :goto_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, v1, Le/d/a/i/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v10, "context"

    if-eqz v0, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    const/16 v0, 0x1d

    if-ge v8, v0, :cond_a

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v11, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v3

    goto :goto_5

    :cond_a
    if-ne v8, v0, :cond_b

    .line 8
    sget-object v0, Le/d/a/i/b;->b:Ljava/util/Map;

    goto :goto_4

    .line 9
    :cond_b
    sget-object v0, Le/d/a/i/b;->c:Ljava/util/Map;

    .line 10
    :goto_4
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    :goto_5
    sget-object v12, Le/d/a/i/b;->a:Ljava/util/Set;

    .line 12
    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_c
    if-eqz v0, :cond_9

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    iget-object v13, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v13, :cond_14

    iget-object v13, v13, Le/d/a/h/a;->e:Landroid/widget/LinearLayout;

    .line 13
    sget v14, Le/d/a/d;->permissionx_permission_item:I

    invoke-virtual {v12, v14, v13, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 14
    sget v13, Le/d/a/c;->permissionIcon:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_13

    sget v13, Le/d/a/c;->permissionText:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_13

    check-cast v12, Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const-string v3, "itemBinding.permissionText"

    sparse-switch v13, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v13, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {v15, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v10, Le/d/a/e;->permissionx_access_background_location:I

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Le/d/a/b;->permissionx_ic_location:I

    goto/16 :goto_7

    :sswitch_1
    const-string v13, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {v15, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v10, Le/d/a/e;->permissionx_system_alert_window:I

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Le/d/a/b;->permissionx_ic_alert:I

    goto :goto_7

    :sswitch_2
    const-string v13, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {v15, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v10, Le/d/a/e;->permissionx_manage_external_storage:I

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Le/d/a/b;->permissionx_ic_storage:I

    goto :goto_7

    :sswitch_3
    const-string v13, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {v15, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v10, Le/d/a/e;->permissionx_write_settings:I

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Le/d/a/b;->permissionx_ic_setting:I

    goto :goto_7

    :cond_e
    :goto_6
    invoke-static {v15, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v10}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v13, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PermissionGroupInfo;->icon:I

    :goto_7
    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Le/d/a/i/a;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v1, Le/d/a/i/a;->k:I

    if-eq v3, v2, :cond_10

    goto :goto_8

    :cond_f
    iget v3, v1, Le/d/a/i/a;->j:I

    if-eq v3, v2, :cond_10

    :goto_8
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v14, v3, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_10
    iget-object v3, v1, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v3, :cond_12

    iget-object v3, v3, Le/d/a/h/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_11

    move-object v11, v0

    :cond_11
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_12
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    .line 16
    :cond_13
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    move-object v2, v3

    .line 17
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "context.resources"

    invoke-static {v0, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x11

    const-string v4, "it"

    if-ge v0, v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-static {v2, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    int-to-double v5, v0

    const-wide v7, 0x3feb851eb851eb85L    # 0.86

    goto :goto_9

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-static {v2, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    int-to-double v5, v0

    const-wide v7, 0x3fe3333333333333L    # 0.6

    :goto_9
    mul-double v5, v5, v7

    double-to-int v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_17
    return-void

    .line 19
    :cond_18
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_19
    move-object v2, v3

    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v2

    :cond_1a
    move-object v2, v3

    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v2

    :cond_1b
    move-object v2, v3

    .line 20
    invoke-static {v6}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be1381d -> :sswitch_3
        -0x6c1165bf -> :sswitch_2
        -0x5d1492dd -> :sswitch_1
        0x78aeb38b -> :sswitch_0
    .end sparse-switch
.end method
