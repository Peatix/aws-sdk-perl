
package Paws::Outposts::CancelCapacityTask;
  use Moose;
  has CapacityTaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CapacityTaskId', required => 1);
  has OutpostIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelCapacityTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}/capacity/{CapacityTaskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::CancelCapacityTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::CancelCapacityTask - Arguments for method CancelCapacityTask on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelCapacityTask on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method CancelCapacityTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelCapacityTask.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $CancelCapacityTaskOutput = $outposts->CancelCapacityTask(
      CapacityTaskId    => 'MyCapacityTaskId',
      OutpostIdentifier => 'MyOutpostIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/CancelCapacityTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityTaskId => Str

ID of the capacity task that you want to cancel.



=head2 B<REQUIRED> OutpostIdentifier => Str

ID or ARN of the Outpost associated with the capacity task that you
want to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelCapacityTask in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

