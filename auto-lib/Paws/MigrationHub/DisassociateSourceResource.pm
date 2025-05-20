
package Paws::MigrationHub::DisassociateSourceResource;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has MigrationTaskName => (is => 'ro', isa => 'Str', required => 1);
  has ProgressUpdateStream => (is => 'ro', isa => 'Str', required => 1);
  has SourceResourceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateSourceResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::DisassociateSourceResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::DisassociateSourceResource - Arguments for method DisassociateSourceResource on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateSourceResource on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method DisassociateSourceResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateSourceResource.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $DisassociateSourceResourceResult = $mgh->DisassociateSourceResource(
      MigrationTaskName    => 'MyMigrationTaskName',
      ProgressUpdateStream => 'MyProgressUpdateStream',
      SourceResourceName   => 'MySourceResourceName',
      DryRun               => 1,                          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/DisassociateSourceResource>

=head1 ATTRIBUTES


=head2 DryRun => Bool

This is an optional parameter that you can use to test whether the call
will succeed. Set this parameter to C<true> to verify that you have the
permissions that are required to make the call, and that you have
specified the other parameters in the call correctly.



=head2 B<REQUIRED> MigrationTaskName => Str

A unique identifier that references the migration task. I<Do not
include sensitive data in this field.>



=head2 B<REQUIRED> ProgressUpdateStream => Str

The name of the progress-update stream, which is used for access
control as well as a namespace for migration-task names that is
implicitly linked to your AWS account. The progress-update stream must
uniquely identify the migration tool as it is used for all updates made
by the tool; however, it does not need to be unique for each AWS
account because it is scoped to the AWS account.



=head2 B<REQUIRED> SourceResourceName => Str

The name that was specified for the source resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateSourceResource in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

