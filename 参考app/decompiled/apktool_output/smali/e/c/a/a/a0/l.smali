.class public final Le/c/a/a/a0/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/l/j;


# instance fields
.field public final synthetic a:Le/c/a/a/a0/n;

.field public final synthetic b:Le/c/a/a/a0/o;


# direct methods
.method public constructor <init>(Le/c/a/a/a0/n;Le/c/a/a/a0/o;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/a0/l;->a:Le/c/a/a/a0/n;

    iput-object p2, p0, Le/c/a/a/a0/l;->b:Le/c/a/a/a0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;
    .locals 2

    iget-object p1, p0, Le/c/a/a/a0/l;->a:Le/c/a/a/a0/n;

    iget-object v0, p0, Le/c/a/a/a0/l;->b:Le/c/a/a/a0/o;

    .line 1
    iget v0, v0, Le/c/a/a/a0/o;->a:I

    .line 2
    check-cast p1, Le/c/a/a/p/b;

    .line 3
    iget-object v0, p1, Le/c/a/a/p/b;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    iget-object v1, p2, Ld/h/l/w;->a:Ld/h/l/w$k;

    invoke-virtual {v1}, Ld/h/l/w$k;->f()Ld/h/f/b;

    move-result-object v1

    .line 5
    iget v1, v1, Ld/h/f/b;->d:I

    .line 6
    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 7
    iget-object p1, p1, Le/c/a/a/p/b;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S(Z)V

    return-object p2
.end method
