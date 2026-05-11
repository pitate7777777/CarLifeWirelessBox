.class public final synthetic Le/b/a/a/o/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lf/m/a/a;


# direct methods
.method public synthetic constructor <init>(Lf/m/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/b;->e:Lf/m/a/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/b;->e:Lf/m/a/a;

    invoke-static {v0}, Le/b/a/a/o/c;->l(Lf/m/a/a;)V

    return-void
.end method
