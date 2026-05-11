.class public final Lcom/baidu/carlifevehicle/SettingsActivity;
.super Ld/b/k/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/SettingsActivity$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/b/k/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Ld/b/k/j;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Ld/b/k/j;->setContentView(I)V

    invoke-virtual {p0}, Ld/b/k/j;->L()Ld/b/k/a;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ld/b/k/a;->i(Z)V

    invoke-virtual {p1, v0}, Ld/b/k/a;->h(Z)V

    const-string v1, "\u8bbe\u7f6e"

    invoke-virtual {p1, v1}, Ld/b/k/a;->k(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance p1, Lcom/baidu/carlifevehicle/SettingsActivity$a;

    invoke-direct {p1}, Lcom/baidu/carlifevehicle/SettingsActivity$a;-><init>()V

    invoke-virtual {p0}, Ld/k/d/e;->E()Ld/k/d/r;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1
    new-instance v3, Ld/k/d/a;

    invoke-direct {v3, v1}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    const v1, 0x7f09024e

    .line 2
    invoke-virtual {v3, v1, p1, v2, v0}, Ld/k/d/z;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v3}, Ld/k/d/z;->c()I

    return-void

    .line 4
    :cond_1
    throw v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
