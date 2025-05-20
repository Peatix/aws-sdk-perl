
package Paws::IoTFleetWise::ListStateTemplates;
  use Moose;
  has ListResponseScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'listResponseScope' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStateTemplates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::ListStateTemplatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListStateTemplates - Arguments for method ListStateTemplates on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStateTemplates on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method ListStateTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStateTemplates.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $ListStateTemplatesResponse = $iotfleetwise->ListStateTemplates(
      ListResponseScope => 'METADATA_ONLY',    # OPTIONAL
      MaxResults        => 1,                  # OPTIONAL
      NextToken         => 'MynextToken',      # OPTIONAL
    );

    # Results:
    my $NextToken = $ListStateTemplatesResponse->NextToken;
    my $Summaries = $ListStateTemplatesResponse->Summaries;

    # Returns a L<Paws::IoTFleetWise::ListStateTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/ListStateTemplates>

=head1 ATTRIBUTES


=head2 ListResponseScope => Str

When you set the C<listResponseScope> parameter to C<METADATA_ONLY>,
the list response includes: state template ID, Amazon Resource Name
(ARN), creation time, and last modification time.

Valid values are: C<"METADATA_ONLY">

=head2 MaxResults => Int

The maximum number of items to return, between 1 and 100, inclusive.



=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStateTemplates in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

