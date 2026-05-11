.class public Le/c/a/a/v/o$c;
.super Le/c/a/a/v/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/a/v/o;->L0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/v/w<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/a/a/v/o;


# direct methods
.method public constructor <init>(Le/c/a/a/v/o;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/v/o$c;->a:Le/c/a/a/v/o;

    invoke-direct {p0}, Le/c/a/a/v/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p1, p0, Le/c/a/a/v/o$c;->a:Le/c/a/a/v/o;

    invoke-static {p1}, Le/c/a/a/v/o;->H0(Le/c/a/a/v/o;)V

    iget-object p1, p0, Le/c/a/a/v/o$c;->a:Le/c/a/a/v/o;

    .line 1
    iget-object v0, p1, Le/c/a/a/v/o;->D0:Landroid/widget/Button;

    .line 2
    iget-object p1, p1, Le/c/a/a/v/o;->s0:Le/c/a/a/v/d;

    .line 3
    invoke-interface {p1}, Le/c/a/a/v/d;->m()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
