.class public Le/c/a/a/m/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/l/x/d;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    iput-object p2, p0, Le/c/a/a/m/d;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iput-boolean p3, p0, Le/c/a/a/m/d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/h/l/x/d$a;)Z
    .locals 0

    iget-object p1, p0, Le/c/a/a/m/d;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean p2, p0, Le/c/a/a/m/d;->b:Z

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    const/4 p1, 0x1

    return p1
.end method
