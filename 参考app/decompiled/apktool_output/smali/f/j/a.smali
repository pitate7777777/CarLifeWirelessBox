.class public final Lf/j/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final synthetic e:Lf/m/a/a;


# direct methods
.method public constructor <init>(Lf/m/a/a;)V
    .locals 0

    iput-object p1, p0, Lf/j/a;->e:Lf/m/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lf/j/a;->e:Lf/m/a/a;

    invoke-interface {v0}, Lf/m/a/a;->a()Ljava/lang/Object;

    return-void
.end method
