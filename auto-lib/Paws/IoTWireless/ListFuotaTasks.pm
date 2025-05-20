
package Paws::IoTWireless::ListFuotaTasks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFuotaTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fuota-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::ListFuotaTasksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListFuotaTasks - Arguments for method ListFuotaTasks on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFuotaTasks on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method ListFuotaTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFuotaTasks.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $ListFuotaTasksResponse = $api . iotwireless->ListFuotaTasks(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $FuotaTaskList = $ListFuotaTasksResponse->FuotaTaskList;
    my $NextToken     = $ListFuotaTasksResponse->NextToken;

    # Returns a L<Paws::IoTWireless::ListFuotaTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/ListFuotaTasks>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFuotaTasks in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

