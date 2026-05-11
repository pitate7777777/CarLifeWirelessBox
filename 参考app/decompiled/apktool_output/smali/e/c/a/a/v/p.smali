.class public Le/c/a/a/v/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Le/c/a/a/v/o;


# direct methods
.method public constructor <init>(Le/c/a/a/v/o;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/p;->e:Le/c/a/a/v/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/c/a/a/v/p;->e:Le/c/a/a/v/o;

    .line 1
    iget-object v0, p1, Le/c/a/a/v/o;->D0:Landroid/widget/Button;

    .line 2
    iget-object p1, p1, Le/c/a/a/v/o;->s0:Le/c/a/a/v/d;

    .line 3
    invoke-interface {p1}, Le/c/a/a/v/d;->m()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Le/c/a/a/v/p;->e:Le/c/a/a/v/o;

    .line 4
    iget-object p1, p1, Le/c/a/a/v/o;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Le/c/a/a/v/p;->e:Le/c/a/a/v/o;

    .line 6
    iget-object v0, p1, Le/c/a/a/v/o;->B0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {p1, v0}, Le/c/a/a/v/o;->N0(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 8
    iget-object p1, p0, Le/c/a/a/v/p;->e:Le/c/a/a/v/o;

    .line 9
    invoke-virtual {p1}, Le/c/a/a/v/o;->L0()V

    return-void
.end method
