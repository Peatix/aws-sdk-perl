
package Paws::WorkMail::RegisterMailDomain;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterMailDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::RegisterMailDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::RegisterMailDomain - Arguments for method RegisterMailDomain on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterMailDomain on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method RegisterMailDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterMailDomain.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $RegisterMailDomainResponse = $workmail->RegisterMailDomain(
      DomainName     => 'MyWorkMailDomainName',
      OrganizationId => 'MyOrganizationId',
      ClientToken    => 'MyIdempotencyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/RegisterMailDomain>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Idempotency token used when retrying requests.



=head2 B<REQUIRED> DomainName => Str

The name of the mail domain to create in WorkMail and SES.



=head2 B<REQUIRED> OrganizationId => Str

The WorkMail organization under which you're creating the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterMailDomain in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

