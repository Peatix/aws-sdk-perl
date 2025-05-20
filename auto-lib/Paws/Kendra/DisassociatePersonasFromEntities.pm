
package Paws::Kendra::DisassociatePersonasFromEntities;
  use Moose;
  has EntityIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociatePersonasFromEntities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DisassociatePersonasFromEntitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DisassociatePersonasFromEntities - Arguments for method DisassociatePersonasFromEntities on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociatePersonasFromEntities on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DisassociatePersonasFromEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociatePersonasFromEntities.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DisassociatePersonasFromEntitiesResponse =
      $kendra->DisassociatePersonasFromEntities(
      EntityIds => [
        'MyEntityId', ...    # min: 1, max: 47
      ],
      Id      => 'MyExperienceId',
      IndexId => 'MyIndexId',

      );

    # Results:
    my $FailedEntityList =
      $DisassociatePersonasFromEntitiesResponse->FailedEntityList;

   # Returns a L<Paws::Kendra::DisassociatePersonasFromEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DisassociatePersonasFromEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityIds => ArrayRef[Str|Undef]

The identifiers of users or groups in your IAM Identity Center identity
source. For example, user IDs could be user emails.



=head2 B<REQUIRED> Id => Str

The identifier of your Amazon Kendra experience.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for your Amazon Kendra experience.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociatePersonasFromEntities in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

