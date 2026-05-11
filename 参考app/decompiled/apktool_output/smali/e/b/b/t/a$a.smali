.class public Le/b/b/t/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/t/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/b/b/t/a;


# direct methods
.method public constructor <init>(Le/b/b/t/a;)V
    .locals 0

    iput-object p1, p0, Le/b/b/t/a$a;->e:Le/b/b/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le/b/b/t/a$a;->e:Le/b/b/t/a;

    .line 1
    iget-object p1, p1, Le/b/b/t/a;->i:Le/b/b/t/a$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Le/b/b/t/a$c;->a()V

    :cond_0
    iget-object p1, p0, Le/b/b/t/a$a;->e:Le/b/b/t/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
