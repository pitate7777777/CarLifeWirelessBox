.class public Ld/k/d/c;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public Z:Landroid/os/Handler;

.field public a0:Ljava/lang/Runnable;

.field public b0:Landroid/content/DialogInterface$OnCancelListener;

.field public c0:Landroid/content/DialogInterface$OnDismissListener;

.field public d0:I

.field public e0:I

.field public f0:Z

.field public g0:Z

.field public h0:I

.field public i0:Z

.field public j0:Landroid/app/Dialog;

.field public k0:Z

.field public l0:Z

.field public m0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ld/k/d/c$a;

    invoke-direct {v0, p0}, Ld/k/d/c$a;-><init>(Ld/k/d/c;)V

    iput-object v0, p0, Ld/k/d/c;->a0:Ljava/lang/Runnable;

    new-instance v0, Ld/k/d/c$b;

    invoke-direct {v0, p0}, Ld/k/d/c$b;-><init>(Ld/k/d/c;)V

    iput-object v0, p0, Ld/k/d/c;->b0:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Ld/k/d/c$c;

    invoke-direct {v0, p0}, Ld/k/d/c$c;-><init>(Ld/k/d/c;)V

    iput-object v0, p0, Ld/k/d/c;->c0:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Ld/k/d/c;->d0:I

    iput v0, p0, Ld/k/d/c;->e0:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/k/d/c;->f0:Z

    iput-boolean v0, p0, Ld/k/d/c;->g0:Z

    const/4 v0, -0x1

    iput v0, p0, Ld/k/d/c;->h0:I

    return-void
.end method


# virtual methods
.method public final E0(ZZ)V
    .locals 4

    iget-boolean v0, p0, Ld/k/d/c;->l0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/k/d/c;->l0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ld/k/d/c;->m0:Z

    iget-object v2, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v2, p0, Ld/k/d/c;->Z:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Ld/k/d/c;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Ld/k/d/c;->Z:Landroid/os/Handler;

    iget-object v2, p0, Ld/k/d/c;->a0:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, Ld/k/d/c;->k0:Z

    iget p2, p0, Ld/k/d/c;->h0:I

    if-ltz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object p1

    iget p2, p0, Ld/k/d/c;->h0:I

    if-ltz p2, :cond_3

    .line 1
    new-instance v2, Ld/k/d/r$f;

    invoke-direct {v2, p1, v3, p2, v0}, Ld/k/d/r$f;-><init>(Ld/k/d/r;Ljava/lang/String;II)V

    invoke-virtual {p1, v2, v1}, Ld/k/d/r;->z(Ld/k/d/r$e;Z)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ld/k/d/c;->h0:I

    goto :goto_1

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object p2

    .line 5
    new-instance v0, Ld/k/d/a;

    invoke-direct {v0, p2}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    .line 6
    invoke-virtual {v0, p0}, Ld/k/d/z;->h(Landroidx/fragment/app/Fragment;)Ld/k/d/z;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ld/k/d/z;->d()I

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ld/k/d/z;->c()I

    :goto_1
    return-void
.end method

.method public F(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 2
    iget-boolean v0, p0, Ld/k/d/c;->g0:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->K:Landroid/view/View;

    .line 4
    iget-object v1, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    iget-boolean v1, p0, Ld/k/d/c;->f0:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    iget-object v1, p0, Ld/k/d/c;->b0:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    iget-object v1, p0, Ld/k/d/c;->c0:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public F0(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s0()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget v1, p0, Ld/k/d/c;->e0:I

    .line 2
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final G0()Landroid/app/Dialog;
    .locals 3

    .line 1
    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->I(Landroid/content/Context;)V

    iget-boolean p1, p0, Ld/k/d/c;->m0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/k/d/c;->l0:Z

    :cond_0
    return-void
.end method

.method public L(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->L(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld/k/d/c;->Z:Landroid/os/Handler;

    iget v0, p0, Landroidx/fragment/app/Fragment;->A:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ld/k/d/c;->g0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ld/k/d/c;->d0:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ld/k/d/c;->e0:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld/k/d/c;->f0:Z

    iget-boolean v0, p0, Ld/k/d/c;->g0:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld/k/d/c;->g0:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ld/k/d/c;->h0:I

    :cond_1
    return-void
.end method

.method public R()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 2
    iget-object v1, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Ld/k/d/c;->k0:Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v1, p0, Ld/k/d/c;->l0:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    invoke-virtual {p0, v1}, Ld/k/d/c;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public S()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 2
    iget-boolean v1, p0, Ld/k/d/c;->m0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ld/k/d/c;->l0:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Ld/k/d/c;->l0:Z

    :cond_0
    return-void
.end method

.method public T(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ld/k/d/c;->g0:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Ld/k/d/c;->i0:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Ld/k/d/c;->i0:Z

    invoke-virtual {p0, p1}, Ld/k/d/c;->F0(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    iget v3, p0, Ld/k/d/c;->d0:I

    if-eq v3, v2, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iput-boolean v1, p0, Ld/k/d/c;->i0:Z

    invoke-virtual {p0}, Ld/k/d/c;->G0()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Ld/k/d/c;->i0:Z

    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Ld/k/d/c;->d0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Ld/k/d/c;->e0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Ld/k/d/c;->f0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Ld/k/d/c;->g0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Ld/k/d/c;->h0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public h0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 2
    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Ld/k/d/c;->k0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public i0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 2
    iget-object v0, p0, Ld/k/d/c;->j0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Ld/k/d/c;->k0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Ld/k/d/c;->E0(ZZ)V

    :cond_0
    return-void
.end method
