
package Paws::MailManager::ListIngressPoints;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIngressPoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::ListIngressPointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListIngressPoints - Arguments for method ListIngressPoints on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIngressPoints on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method ListIngressPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIngressPoints.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $ListIngressPointsResponse = $mail -manager->ListIngressPoints(
      NextToken => 'MyPaginationToken',    # OPTIONAL
      PageSize  => 1,                      # OPTIONAL
    );

    # Results:
    my $IngressPoints = $ListIngressPointsResponse->IngressPoints;
    my $NextToken     = $ListIngressPointsResponse->NextToken;

    # Returns a L<Paws::MailManager::ListIngressPointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/ListIngressPoints>

=head1 ATTRIBUTES


=head2 NextToken => Str

If you received a pagination token from a previous call to this API,
you can provide it here to continue paginating through the next page of
results.



=head2 PageSize => Int

The maximum number of ingress endpoint resources that are returned per
call. You can use NextToken to obtain further ingress endpoints.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIngressPoints in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

