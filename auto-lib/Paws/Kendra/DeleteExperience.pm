
package Paws::Kendra::DeleteExperience;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteExperience');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DeleteExperienceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DeleteExperience - Arguments for method DeleteExperience on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteExperience on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DeleteExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteExperience.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DeleteExperienceResponse = $kendra->DeleteExperience(
      Id      => 'MyExperienceId',
      IndexId => 'MyIndexId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DeleteExperience>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of your Amazon Kendra experience you want to delete.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for your Amazon Kendra experience.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteExperience in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

