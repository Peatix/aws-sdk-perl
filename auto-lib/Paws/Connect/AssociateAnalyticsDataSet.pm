
package Paws::Connect::AssociateAnalyticsDataSet;
  use Moose;
  has DataSetId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has TargetAccountId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAnalyticsDataSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analytics-data/instance/{InstanceId}/association');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::AssociateAnalyticsDataSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssociateAnalyticsDataSet - Arguments for method AssociateAnalyticsDataSet on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAnalyticsDataSet on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method AssociateAnalyticsDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAnalyticsDataSet.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $AssociateAnalyticsDataSetResponse = $connect->AssociateAnalyticsDataSet(
      DataSetId       => 'MyDataSetId',
      InstanceId      => 'MyInstanceId',
      TargetAccountId => 'MyAWSAccountId',    # OPTIONAL
    );

    # Results:
    my $DataSetId        = $AssociateAnalyticsDataSetResponse->DataSetId;
    my $ResourceShareArn = $AssociateAnalyticsDataSetResponse->ResourceShareArn;
    my $ResourceShareId  = $AssociateAnalyticsDataSetResponse->ResourceShareId;
    my $TargetAccountId  = $AssociateAnalyticsDataSetResponse->TargetAccountId;

    # Returns a L<Paws::Connect::AssociateAnalyticsDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/AssociateAnalyticsDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSetId => Str

The identifier of the dataset to associate with the target account.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 TargetAccountId => Str

The identifier of the target account. Use to associate a dataset to a
different account than the one containing the Amazon Connect instance.
If not specified, by default this value is the Amazon Web Services
account that has the Amazon Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAnalyticsDataSet in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

