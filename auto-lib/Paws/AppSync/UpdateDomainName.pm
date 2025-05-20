
package Paws::AppSync::UpdateDomainName;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domainnames/{domainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateDomainNameResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateDomainName - Arguments for method UpdateDomainName on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainName on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainName.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateDomainNameResponse = $appsync->UpdateDomainName(
      DomainName  => 'MyDomainName',
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $DomainNameConfig = $UpdateDomainNameResponse->DomainNameConfig;

    # Returns a L<Paws::AppSync::UpdateDomainNameResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateDomainName>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the C<DomainName>.



=head2 B<REQUIRED> DomainName => Str

The domain name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainName in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

