
package Paws::OpenSearchServerless::ListSecurityConfigs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSecurityConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::ListSecurityConfigsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListSecurityConfigs - Arguments for method ListSecurityConfigs on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSecurityConfigs on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method ListSecurityConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSecurityConfigs.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $ListSecurityConfigsResponse = $aoss->ListSecurityConfigs(
      Type       => 'saml',
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSecurityConfigsResponse->NextToken;
    my $SecurityConfigSummaries =
      $ListSecurityConfigsResponse->SecurityConfigSummaries;

  # Returns a L<Paws::OpenSearchServerless::ListSecurityConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/ListSecurityConfigs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results. The
default is 20.



=head2 NextToken => Str

If your initial C<ListSecurityConfigs> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<ListSecurityConfigs> operations, which returns results in the next
page.



=head2 B<REQUIRED> Type => Str

The type of security configuration.

Valid values are: C<"saml">, C<"iamidentitycenter">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSecurityConfigs in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

