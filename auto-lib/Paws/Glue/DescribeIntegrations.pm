
package Paws::Glue::DescribeIntegrations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Glue::IntegrationFilter]');
  has IntegrationIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIntegrations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DescribeIntegrationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeIntegrations - Arguments for method DescribeIntegrations on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIntegrations on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DescribeIntegrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIntegrations.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DescribeIntegrationsResponse = $glue->DescribeIntegrations(
      Filters => [
        {
          Name   => 'MyString128',    # min: 1, max: 128; OPTIONAL
          Values => [
            'MyString128', ...        # min: 1, max: 128; OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IntegrationIdentifier => 'MyString128',    # OPTIONAL
      Marker                => 'MyString128',    # OPTIONAL
      MaxRecords            => 1,                # OPTIONAL
    );

    # Results:
    my $Integrations = $DescribeIntegrationsResponse->Integrations;
    my $Marker       = $DescribeIntegrationsResponse->Marker;

    # Returns a L<Paws::Glue::DescribeIntegrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DescribeIntegrations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Glue::IntegrationFilter>]

A list of key and values, to filter down the results. Supported keys
are "Status", "IntegrationName", and "SourceArn". IntegrationName is
limited to only one value.



=head2 IntegrationIdentifier => Str

The Amazon Resource Name (ARN) for the integration.



=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request.



=head2 MaxRecords => Int

The total number of items to return in the output.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIntegrations in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

