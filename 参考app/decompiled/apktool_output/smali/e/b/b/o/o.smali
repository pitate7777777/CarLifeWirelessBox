.class public Le/b/b/o/o;
.super Le/b/b/o/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/b/o/o$b;
    }
.end annotation


# static fields
.field public static f0:Le/b/b/o/o;


# instance fields
.field public d0:Le/b/b/p/a;

.field public e0:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Le/b/b/o/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/b/b/o/o;->d0:Le/b/b/p/a;

    new-instance v1, Le/b/b/o/o$b;

    invoke-direct {v1, p0, v0}, Le/b/b/o/o$b;-><init>(Le/b/b/o/o;Le/b/b/o/o$a;)V

    iput-object v1, p0, Le/b/b/o/o;->d0:Le/b/b/p/a;

    invoke-static {v1}, Le/b/b/p/b;->d(Le/b/b/p/a;)V

    return-void
.end method


# virtual methods
.method public P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Le/b/b/o/g;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "onCreateView"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "LaunchFragment"

    invoke-static {p3, p2}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0039

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p3, 0x7f09012e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/b/b/o/o;->e0:Landroid/widget/ImageView;

    iget-object p2, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    const p3, 0x7f09012f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget-object p2, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string p3, "20181100"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string p3, "20182100"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string p3, "2009"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Le/b/b/o/o;->e0:Landroid/widget/ImageView;

    const p3, 0x7f0800c7

    goto :goto_1

    :cond_1
    sget-object p2, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string p3, "20211100"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Le/b/b/o/o;->e0:Landroid/widget/ImageView;

    const p3, 0x7f0800c5

    goto :goto_1

    :cond_2
    sget-object p2, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string p3, "20222103"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Le/b/b/o/o;->e0:Landroid/widget/ImageView;

    const p3, 0x7f0800c8

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p2, p0, Le/b/b/o/o;->e0:Landroid/widget/ImageView;

    const p3, 0x7f0800c6

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    invoke-static {}, Le/b/b/s/e;->a()Le/b/b/s/e;

    move-result-object p2

    .line 1
    iget-object p2, p2, Le/b/b/s/e;->a:Landroid/content/SharedPreferences;

    const-string p3, "first_install_key"

    if-nez p2, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_2
    const/16 p2, 0x7d5

    const/16 v1, 0x7d0

    if-eqz p1, :cond_8

    .line 2
    sget-object p1, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string v2, "20542100"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const/16 p1, 0x7d9

    invoke-static {p1, v1}, Le/b/b/p/b;->b(II)V

    goto :goto_3

    :cond_6
    invoke-static {p2, v1}, Le/b/b/p/b;->b(II)V

    :goto_3
    invoke-static {}, Le/b/b/s/e;->a()Le/b/b/s/e;

    move-result-object p1

    .line 3
    iget-object p2, p1, Le/b/b/s/e;->b:Landroid/content/SharedPreferences$Editor;

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p1, Le/b/b/s/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 4
    :cond_8
    invoke-static {p2, v1}, Le/b/b/p/b;->b(II)V

    :goto_4
    iget-object p1, p0, Le/b/b/o/g;->Z:Landroid/view/View;

    return-object p1
.end method

.method public R()V
    .locals 3

    invoke-super {p0}, Le/b/b/o/g;->R()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "LaunchFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public S()V
    .locals 3

    invoke-super {p0}, Le/b/b/o/g;->S()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDetach"

    aput-object v2, v0, v1

    const-string v1, "LaunchFragment"

    invoke-static {v1, v0}, Le/b/a/a/r/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Le/b/b/o/o;->d0:Le/b/b/p/a;

    invoke-static {v0}, Le/b/b/p/b;->e(Le/b/b/p/a;)V

    return-void
.end method
