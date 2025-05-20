
package Paws::SsmSap::ListComponents;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-components');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::ListComponentsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::ListComponents - Arguments for method ListComponents on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponents on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method ListComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponents.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $ListComponentsOutput = $ssm -sap->ListComponents(
      ApplicationId => 'MyApplicationId',    # OPTIONAL
      MaxResults    => 1,                    # OPTIONAL
      NextToken     => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $Components = $ListComponentsOutput->Components;
    my $NextToken  = $ListComponentsOutput->NextToken;

    # Returns a L<Paws::SsmSap::ListComponentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/ListComponents>

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned nextToken
value.

If you do not specify a value for MaxResults, the request returns 50
items per page by default.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponents in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

