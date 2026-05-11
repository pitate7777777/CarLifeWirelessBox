.class public Le/c/a/a/i0/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/i0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/c/a/a/i0/h;


# direct methods
.method public constructor <init>(Le/c/a/a/i0/h;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/i0/h$b;->e:Le/c/a/a/i0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Le/c/a/a/i0/h$b;->e:Le/c/a/a/i0/h;

    iget-object p1, p1, Le/c/a/a/i0/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    iget-object p1, p0, Le/c/a/a/i0/h$b;->e:Le/c/a/a/i0/h;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Le/c/a/a/i0/h;->g(Le/c/a/a/i0/h;Z)V

    iget-object p1, p0, Le/c/a/a/i0/h$b;->e:Le/c/a/a/i0/h;

    .line 1
    iput-boolean p2, p1, Le/c/a/a/i0/h;->i:Z

    :cond_0
    return-void
.end method
