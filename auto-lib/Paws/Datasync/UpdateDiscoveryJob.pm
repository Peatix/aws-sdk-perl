
package Paws::Datasync::UpdateDiscoveryJob;
  use Moose;
  has CollectionDurationMinutes => (is => 'ro', isa => 'Int', required => 1);
  has DiscoveryJobArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDiscoveryJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateDiscoveryJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateDiscoveryJob - Arguments for method UpdateDiscoveryJob on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDiscoveryJob on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateDiscoveryJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDiscoveryJob.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateDiscoveryJobResponse = $datasync->UpdateDiscoveryJob(
      CollectionDurationMinutes => 1,
      DiscoveryJobArn           => 'MyDiscoveryJobArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateDiscoveryJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionDurationMinutes => Int

Specifies in minutes how long that you want the discovery job to run.
(You can't set this parameter to less than the number of minutes that
the job has already run for.)



=head2 B<REQUIRED> DiscoveryJobArn => Str

Specifies the Amazon Resource Name (ARN) of the discovery job that you
want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDiscoveryJob in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

