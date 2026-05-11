.class public Le/b/b/o/p$c;
.super Le/b/b/p/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/b/o/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Le/b/b/o/p;


# direct methods
.method public constructor <init>(Le/b/b/o/p;Le/b/b/o/p$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    invoke-direct {p0}, Le/b/b/p/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3fb

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3f4

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3f7

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3f9

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3fa

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3fc

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x3f6

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    const v0, 0x18009

    invoke-virtual {p0, v0}, Le/b/b/p/a;->a(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MsgMainFragmentHandler handleMessage get msg: "

    invoke-static {v2}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Le/b/b/s/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MainFragment"

    invoke-static {v2, v1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3ea

    const v5, 0x7f0f00e7

    const v6, 0x7f08006c

    const/16 v7, 0x8

    if-eq v1, v4, :cond_9

    const/16 v4, 0x3ec

    if-eq v1, v4, :cond_8

    const/16 v4, 0x3f6

    if-eq v1, v4, :cond_6

    const/16 p1, 0x41c

    if-eq v1, p1, :cond_5

    const/16 p1, 0x7da

    if-eq v1, p1, :cond_4

    const p1, 0x18009

    if-eq v1, p1, :cond_3

    const/16 p1, 0x3fb

    if-eq v1, p1, :cond_2

    const/16 p1, 0x3fc

    if-eq v1, p1, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 1
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 2
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 3
    iget-object p1, p1, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    const v1, 0x7f0f00ec

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 5
    iget-object p1, p1, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 7
    iget-object p1, p1, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    .line 8
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 9
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 10
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 11
    iget-object p1, p1, Le/b/b/o/p;->g0:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 13
    iget-object p1, p1, Le/b/b/o/p;->g0:Landroid/widget/Button;

    .line 14
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 15
    iget-object p1, p1, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    const v1, 0x7f0f00ea

    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 17
    iget-object p1, p1, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    .line 18
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 19
    iget-object p1, p1, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    .line 20
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :pswitch_2
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 21
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 22
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 23
    iget-object p1, p1, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    .line 24
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 25
    iget-object p1, p1, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    const v1, 0x7f0f00e9

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 27
    iget-object p1, p1, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    .line 28
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080089

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 29
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 30
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 31
    iget-object p1, p1, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    const v1, 0x7f0f00e8

    .line 32
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 33
    iget-object p1, p1, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    .line 34
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 35
    iget-object p1, p1, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    .line 36
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_3
    sget-object p1, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 37
    iget-object v1, v1, Le/b/b/o/p;->r0:Ljava/lang/Runnable;

    goto/16 :goto_5

    .line 38
    :cond_3
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 39
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 40
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 41
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 42
    invoke-virtual {p1}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->a()V

    goto/16 :goto_6

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "showFragment(HelpMainFragment.getInstance()"

    aput-object v1, p1, v3

    invoke-static {v2, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    if-eqz p1, :cond_a

    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    invoke-static {}, Le/b/b/o/n;->E0()Le/b/b/o/n;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    goto/16 :goto_6

    :cond_5
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 43
    iget-boolean p1, p1, Le/b/b/o/p;->o0:Z

    if-eqz p1, :cond_a

    .line 44
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 45
    iput-boolean v3, p1, Le/b/b/o/p;->o0:Z

    .line 46
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 47
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 48
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 49
    iget-object p1, p1, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    .line 50
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 51
    iget-object p1, p1, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 53
    iget-object p1, p1, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    .line 54
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "ChangeUI:: MSG_FRAGMENT_REFRESH  AoaNotSupportADBNotOpen "

    aput-object v1, p1, v3

    invoke-static {v2, p1}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 55
    iget-object v1, v1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 56
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 57
    iget-object v1, v1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 59
    iget-object v1, v1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 60
    invoke-virtual {v1}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->b()V

    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 61
    iget-object v1, v1, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    .line 62
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 63
    iget-object v1, v1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 64
    invoke-virtual {v1, p1}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_2
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "set progress number error"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_8
    sget-object p1, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 65
    iget-object v1, v1, Le/b/b/o/p;->q0:Ljava/lang/Runnable;

    .line 66
    invoke-virtual {p1, v1}, Le/b/a/a/r/h;->b(Ljava/lang/Runnable;)V

    sget-object v4, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 67
    iget-object v5, p1, Le/b/b/o/p;->r0:Ljava/lang/Runnable;

    .line 68
    sget p1, Le/b/b/o/p;->s0:I

    int-to-long v6, p1

    sget p1, Le/b/b/o/p;->s0:I

    int-to-long v8, p1

    invoke-virtual/range {v4 .. v9}, Le/b/a/a/r/h;->a(Ljava/lang/Runnable;JJ)V

    goto :goto_6

    :cond_9
    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 69
    iget-object p1, p1, Le/b/b/o/p;->e0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 70
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 71
    iget-object p1, p1, Le/b/b/o/p;->l0:Landroid/widget/RelativeLayout;

    .line 72
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 73
    iget-object p1, p1, Le/b/b/o/p;->f0:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 75
    iget-object p1, p1, Le/b/b/o/p;->d0:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    goto/16 :goto_0

    :goto_4
    sget-object p1, Le/b/a/a/r/h;->a:Le/b/a/a/r/h;

    iget-object v1, p0, Le/b/b/o/p$c;->b:Le/b/b/o/p;

    .line 77
    iget-object v1, v1, Le/b/b/o/p;->q0:Ljava/lang/Runnable;

    .line 78
    :goto_5
    invoke-virtual {p1, v1}, Le/b/a/a/r/h;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "change main fragment get exception"

    aput-object v0, p1, v3

    invoke-static {v2, p1}, Le/b/a/a/r/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3f1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
