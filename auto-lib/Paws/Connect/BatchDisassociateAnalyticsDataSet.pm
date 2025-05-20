
package Paws::Connect::BatchDisassociateAnalyticsDataSet;
  use Moose;
  has DataSetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has TargetAccountId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDisassociateAnalyticsDataSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analytics-data/instance/{InstanceId}/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::BatchDisassociateAnalyticsDataSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchDisassociateAnalyticsDataSet - Arguments for method BatchDisassociateAnalyticsDataSet on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDisassociateAnalyticsDataSet on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method BatchDisassociateAnalyticsDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDisassociateAnalyticsDataSet.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $BatchDisassociateAnalyticsDataSetResponse =
      $connect->BatchDisassociateAnalyticsDataSet(
      DataSetIds => [
        'MyDataSetId', ...    # min: 1, max: 255
      ],
      InstanceId      => 'MyInstanceId',
      TargetAccountId => 'MyAWSAccountId',    # OPTIONAL
      );

    # Results:
    my $Deleted = $BatchDisassociateAnalyticsDataSetResponse->Deleted;
    my $Errors  = $BatchDisassociateAnalyticsDataSetResponse->Errors;

 # Returns a L<Paws::Connect::BatchDisassociateAnalyticsDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/BatchDisassociateAnalyticsDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSetIds => ArrayRef[Str|Undef]

An array of associated dataset identifiers to remove.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 TargetAccountId => Str

The identifier of the target account. Use to disassociate a dataset
from a different account than the one containing the Amazon Connect
instance. If not specified, by default this value is the Amazon Web
Services account that has the Amazon Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDisassociateAnalyticsDataSet in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

