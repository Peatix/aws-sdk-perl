
package Paws::Resiliencehub::ListAppVersionResourceMappings;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppVersionResourceMappings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-app-version-resource-mappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListAppVersionResourceMappingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppVersionResourceMappings - Arguments for method ListAppVersionResourceMappings on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppVersionResourceMappings on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListAppVersionResourceMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppVersionResourceMappings.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListAppVersionResourceMappingsResponse =
      $resiliencehub->ListAppVersionResourceMappings(
      AppArn     => 'MyArn',
      AppVersion => 'MyEntityVersion',
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
      );

    # Results:
    my $NextToken = $ListAppVersionResourceMappingsResponse->NextToken;
    my $ResourceMappings =
      $ListAppVersionResourceMappingsResponse->ResourceMappings;

# Returns a L<Paws::Resiliencehub::ListAppVersionResourceMappingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListAppVersionResourceMappings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> AppVersion => Str

The version of the application.



=head2 MaxResults => Int

Maximum number of results to include in the response. If more results
exist than the specified C<MaxResults> value, a token is included in
the response so that the remaining results can be retrieved.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppVersionResourceMappings in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

