
package Paws::RedshiftServerless::ListCustomDomainAssociations;
  use Moose;
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainCertificateArn' );
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomDomainAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::ListCustomDomainAssociationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListCustomDomainAssociations - Arguments for method ListCustomDomainAssociations on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomDomainAssociations on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method ListCustomDomainAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomDomainAssociations.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $ListCustomDomainAssociationsResponse =
      $redshift -serverless->ListCustomDomainAssociations(
      CustomDomainCertificateArn =>
        'MyCustomDomainCertificateArnString',    # OPTIONAL
      CustomDomainName => 'MyCustomDomainName',  # OPTIONAL
      MaxResults       => 1,                     # OPTIONAL
      NextToken        => 'MyPaginationToken',   # OPTIONAL
      );

    # Results:
    my $Associations = $ListCustomDomainAssociationsResponse->Associations;
    my $NextToken    = $ListCustomDomainAssociationsResponse->NextToken;

# Returns a L<Paws::RedshiftServerless::ListCustomDomainAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/ListCustomDomainAssociations>

=head1 ATTRIBUTES


=head2 CustomDomainCertificateArn => Str

The custom domain nameE<rsquo>s certificate Amazon resource name (ARN).



=head2 CustomDomainName => Str

The custom domain name associated with the workgroup.



=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to display the next page of results.



=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomDomainAssociations in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

