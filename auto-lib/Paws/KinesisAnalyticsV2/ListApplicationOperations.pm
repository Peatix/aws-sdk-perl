
package Paws::KinesisAnalyticsV2::ListApplicationOperations;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Operation => (is => 'ro', isa => 'Str');
  has OperationStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationOperations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::ListApplicationOperationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationOperations - Arguments for method ListApplicationOperations on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationOperations on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method ListApplicationOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationOperations.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $ListApplicationOperationsResponse =
      $kinesisanalytics->ListApplicationOperations(
      ApplicationName => 'MyApplicationName',
      Limit           => 1,                     # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
      Operation       => 'MyOperation',         # OPTIONAL
      OperationStatus => 'IN_PROGRESS',         # OPTIONAL
      );

    # Results:
    my $ApplicationOperationInfoList =
      $ListApplicationOperationsResponse->ApplicationOperationInfoList;
    my $NextToken = $ListApplicationOperationsResponse->NextToken;

# Returns a L<Paws::KinesisAnalyticsV2::ListApplicationOperationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/ListApplicationOperations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str





=head2 Limit => Int





=head2 NextToken => Str





=head2 Operation => Str





=head2 OperationStatus => Str



Valid values are: C<"IN_PROGRESS">, C<"CANCELLED">, C<"SUCCESSFUL">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationOperations in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

