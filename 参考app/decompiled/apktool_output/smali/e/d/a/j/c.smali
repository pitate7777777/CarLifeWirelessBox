.class public Le/d/a/j/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Le/d/a/j/i;

.field public b:Le/d/a/j/b;


# direct methods
.method public constructor <init>(Le/d/a/j/i;Le/d/a/j/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/j/c;->a:Le/d/a/j/i;

    iput-object p2, p0, Le/d/a/j/c;->b:Le/d/a/j/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v7, v0, Le/d/a/j/c;->a:Le/d/a/j/i;

    iget-object v8, v0, Le/d/a/j/c;->b:Le/d/a/j/b;

    const/4 v1, 0x0

    if-eqz v7, :cond_a

    const-string v2, "chainTask"

    .line 1
    invoke-static {v8, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "permissions"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Le/d/a/i/a;

    iget-object v10, v7, Le/d/a/j/i;->a:Ld/k/d/e;

    if-eqz v10, :cond_9

    invoke-static/range {p2 .. p2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    iget v15, v7, Le/d/a/j/i;->c:I

    iget v3, v7, Le/d/a/j/i;->d:I

    move-object v9, v6

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v16, v3

    invoke-direct/range {v9 .. v16}, Le/d/a/i/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2
    invoke-static {v8, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dialog"

    invoke-static {v6, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    iput-boolean v9, v7, Le/d/a/j/i;->i:Z

    .line 3
    iget-object v10, v6, Le/d/a/i/a;->f:Ljava/util/List;

    const-string v2, "dialog.permissionsToRequest"

    .line 4
    invoke-static {v10, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Le/d/a/j/b;->b()V

    goto/16 :goto_2

    :cond_0
    iput-object v6, v7, Le/d/a/j/i;->e:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    const-string v2, "binding"

    .line 5
    iget-object v3, v6, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v3, :cond_8

    iget-object v3, v3, Le/d/a/h/a;->e:Landroid/widget/LinearLayout;

    const-string v4, "binding.permissionsLayout"

    invoke-static {v3, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {v8}, Le/d/a/j/b;->b()V

    .line 7
    :cond_2
    iget-object v3, v6, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v3, :cond_7

    iget-object v11, v3, Le/d/a/h/a;->f:Landroid/widget/Button;

    const-string v3, "binding.positiveBtn"

    invoke-static {v11, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dialog.positiveButton"

    .line 8
    invoke-static {v11, v3}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v3, v6, Le/d/a/i/a;->i:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v6, Le/d/a/i/a;->e:Le/d/a/h/a;

    if-eqz v3, :cond_3

    iget-object v1, v3, Le/d/a/h/a;->c:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    move-object v12, v1

    .line 10
    invoke-virtual {v6, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v6, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setClickable(Z)V

    new-instance v13, Le/d/a/j/f;

    const/4 v4, 0x1

    move-object v1, v13

    move-object v2, v7

    move-object v3, v6

    move-object v5, v8

    move-object v14, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Le/d/a/j/f;-><init>(Le/d/a/j/i;Le/d/a/i/c;ZLe/d/a/j/b;Ljava/util/List;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v12, :cond_5

    invoke-virtual {v12, v9}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Le/d/a/j/g;

    invoke-direct {v1, v14, v8}, Le/d/a/j/g;-><init>(Le/d/a/i/c;Le/d/a/j/b;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v1, v7, Le/d/a/j/i;->e:Landroid/app/Dialog;

    if-eqz v1, :cond_6

    new-instance v2, Le/d/a/j/h;

    invoke-direct {v2, v7}, Le/d/a/j/h;-><init>(Le/d/a/j/i;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_6
    :goto_2
    return-void

    .line 11
    :cond_7
    invoke-static {v2}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_8
    invoke-static {v2}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v2, "activity"

    .line 13
    invoke-static {v2}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_a
    throw v1
.end method
